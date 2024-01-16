<?php $featured_img_url = get_the_post_thumbnail_url(get_the_ID(),'full'); ?>
<section class="at-section-banner" style="background-image: url('<?php echo $featured_img_url;?>');" id="banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="at-section-banner__title"><?php the_field('titulo'); ?></h2>
                <p class="at-section-banner__description"><?php the_field('descricao'); ?></p>
                <button class="at-btn at-btn--small">Saiba mais</button>
            </div>
        </div>
    </div>
</section>