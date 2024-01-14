"use strict";

var path = {
  dev: "./_src",
  prod: "./assets",
  phpFiles: "templates/**/*.php",
  proxy: "http://localhost:10023",
};

const autoprefixer = require("autoprefixer");
const browserSync = require("browser-sync").create();
const cssnano = require("cssnano");
const concat = require("gulp-concat");
const gulp = require("gulp");
const imagemin = require("gulp-imagemin");
const postcss = require("gulp-postcss");
const plumber = require("gulp-plumber");
const sass = require("gulp-sass")(require("sass"));
const terser = require("gulp-terser");

gulp.task(
  "sass",
  gulp.series(function () {
    return gulp
      .src(path.dev + "/scss/**/*.scss")
      .pipe(plumber())
      .pipe(sass({ outputStyle: "compressed" }))
      .pipe(postcss([autoprefixer(), cssnano()]))
      .pipe(concat("main.min.css"))
      .pipe(plumber.stop())
      .pipe(gulp.dest(path.prod + "/css/"))
      .pipe(browserSync.stream());
  })
);

gulp.task(
  "scripts",
  gulp.series(function () {
    return gulp
      .src([path.dev + "/js/_includes/**/*.js", path.dev + "/js/*.js"])
      .pipe(concat("main.min.js"))
      .pipe(terser())
      .pipe(gulp.dest(path.prod + "/js/"))
      .pipe(browserSync.stream());
  })
);

gulp.task(
  "images",
  gulp.series(function () {
    return gulp
      .src(path.dev + "/images/**/*")
      .pipe(imagemin())
      .pipe(gulp.dest(path.prod + "/images/"));
  })
);

gulp.task("php", function () {
  console.log("Arquivo PHP processado!");
});

gulp.task(
  "server",
  gulp.series("sass", "scripts", function () {
    browserSync.init({
      proxy: path.proxy,
    });

    gulp
      .watch([path.dev + "/js/*.js", path.dev + "/scss/**/*.scss"])
      .on(
        "change",
        gulp.parallel("sass", "scripts", "php", browserSync.reload)
      );
    gulp.watch(path.dev + "/images/**/*", gulp.series("images"));
    gulp.watch(path.phpFiles, gulp.series("php"));
  })
);

gulp.task("default", gulp.series("server"));
