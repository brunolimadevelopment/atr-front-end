<section class="at-about" id="about">
    <div class="container">
        <div class="row">
        <div class="col-md-6">
        <img src="<?php the_field('about_image'); ?>" alt="Atratis" width="576" height="369" class="at-about__thumb">

        </div>
        <div class="col-md-6">
            <h2 class="at-title-section"><?php the_field('about_title'); ?></h2>
            <p class="at-description-section"><?php the_field('about_descricao'); ?></p>
            <button class="at-btn at-btn--small">Saiba mais</button>
        </div>
        </div>
    </div>
</section>