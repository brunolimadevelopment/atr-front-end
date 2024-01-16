<?php get_template_part('templates/html', 'head'); ?>
<?php
  $location = 'menu_1';
  $menu_class = 'at-menu';
?>
<header class="at-header">
  <div class="container">
    <div class="row at-header__row">
      <div class="col-md-3">
        <a href="<?php echo get_site_url(); ?>" title="<?php the_title_attribute(); ?>">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/atratis.svg" alt="Atratis" width="182" height="46">
        </a>
      </div>
      <div class="col-md-9 at-header__nav">
        <nav class="at-nav">
          <?php if(!wp_is_mobile()): ?>
            <?php if(has_nav_menu($location)): 
              wp_nav_menu(array('theme_location' => $location, 'menu_class' => $menu_class)); 
            ?>
              <?php else: ?>
                <ul id="menu-header" class="at-menu">
                  <li class="at-menu__item"><a href="#banner" class="active-menu">Início</a></li>
                  <li class="at-menu__item"><a href="#about">O IVV</a></li>
                  <li class="at-menu__item"><a href="#treatments">Tratamentos</a></li>
                  <li class="at-menu__item"><a href="#plans">Convênios</a></li>
                  <li class="at-menu__item"><a href="#testimony">Depoimentos</a></li>
                  <li class="at-menu__item"><a href="#blog">Blog</a></li>
                </ul>
              <?php endif; ?>
          <?php endif; ?>

          <?php if(wp_is_mobile()): ?>  
            <button class="at-toggle">
              <span></span>
            </button>
            <div class="at-nav-mobile">
              <?php wp_nav_menu(array('theme_location' => 'menu_2', 'menu_class' => 'at-menu-mobile')); ?>
            </div>
          <?php endif; ?>
         
        </nav>
        <?php if(!wp_is_mobile()): ?> 
          <a href="#contact" class="at-btn at-btn--large">Fale Conosco</a>
        <?php endif; ?>
      </div>
    </div>
  </div>
</header>
<main class="main" role="main">