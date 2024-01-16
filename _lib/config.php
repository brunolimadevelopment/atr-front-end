<?php

/*
* Configurações do Tema
* Desenvolvedor: Bruno Lima
* Email: brunolimadevelopment@gmail.com
*/

//===================================Painel================================================
require_once locate_template('/_lib/dashboard.php');
//================================Funções Dashboard========================================
require_once locate_template('/_lib/admin.php');//..................STYLE LOGIN/ADMIN
//===================================Features==============================================
require_once locate_template('/_lib/_features/bem.php');//..........MENU BEM CSS
//===================================Backend===============================================
require_once locate_template('/_lib/posts.php');//..................POST TYPE FUNCTIONS
require_once locate_template('/_lib/taxonomies.php');//.............TAXONOMIES FUNCTIONS
require_once locate_template('/_lib/thumbs.php');//.................THUMBNAIL FUNCTIONS
//===================================Tema==================================================
require_once locate_template('/_lib/scripts.php');//................SCRIPTS E CSS

add_filter('show_admin_bar', '__return_false');

function tema_setup() {

  register_nav_menus(array(
    'menu_1' => 'Menu Header',
    'menu_2' => 'Menu Mobile',
  ));

  add_editor_style('/assets/css/editor-style.css');
  add_theme_support('post-thumbnails');

  set_post_thumbnail_size(1200, 0, true);
}

add_action('after_setup_theme', 'tema_setup');
add_action( 'admin_bar_menu', 'remove_wp_logo', 999 );

function remove_wp_logo( $wp_admin_bar ) {
  $wp_admin_bar->remove_node( 'wp-logo' );
}

function postThumbnail($class_thumb) {
  $has_thumbnail = has_post_thumbnail();
  $thumbnail = ($has_thumbnail) ?
  get_the_post_thumbnail(get_the_ID(), 'full', array('class' => $class_thumb, 'alt' => get_the_title()))
  : '<img src="'.get_template_directory_uri().'/assets/images/placeholder.png" class="at-card-post__thumb at-card-post__thumb--medium" alt="thumb" />';
  echo $thumbnail;
}