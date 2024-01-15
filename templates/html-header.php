<?php get_template_part('templates/html', 'head'); ?>
<header class="at-header">
  <div class="container">
    <div class="row at-header__row">
      <div class="col-1 col-md-3 col-lg-5">
        <a href="<?php echo get_site_url(); ?>" title="<?php the_title_attribute(); ?>">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/atratis.svg" alt="Atratis" width="182" height="46">
        </a>
      </div>
      <div class="col-1 col-md-9 col-lg-7 at-header__nav">
        <nav class="at-nav">
          <?php if(!wp_is_mobile()): ?>
            <?php wp_nav_menu(array('theme_location' => 'menu_1', 'menu_class' => 'at-menu')); ?>
          <?php else: ?>
            <button class="at-toggle">
              <span></span>
            </button>
            <div class="at-nav-mobile">
              <?php wp_nav_menu(array('theme_location' => 'menu_2', 'menu_class' => 'at-menu-mobile')); ?>
            </div>
          <?php endif; ?>
        </nav>
        <?php if(!wp_is_mobile()): ?>
          <button class="at-btn at-btn--large">Fale Conosco</button>
        <?php endif; ?>
      </div>
    </div>
  </div>
</header>
<main class="main" role="main">