jQuery(function ($) {
  $(document).ready(function () {
    function toggleMobile() {
      $(".at-toggle").click(function () {
        // div do mobile
        var nav = $(".at-nav-mobile");

        if ($(nav).hasClass("active")) {
          $(nav).removeClass("active").fadeOut();

          // btn do mobile
          $(this).removeClass("toggled");
        } else {
          // ao clicar no btn do mobile é executado esse else.

          $(nav).addClass("active").fadeIn();

          // btn do mobile
          $(this).addClass("toggled");
        }
      });
    }
    toggleMobile();
  });
});
