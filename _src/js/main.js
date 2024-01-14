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

    function owlPlans() {
      $(".owl-carousel").owlCarousel({
        loop: true,
        margin: 20,
        nav: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
          0: {
            items: 1,
          },
          600: {
            items: 4,
          },
        },
      });
    }
    owlPlans();
  });
});
