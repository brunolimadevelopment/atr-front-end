<?php if('tratamentos' == get_post_type()) :?>
    <article class="at-card-post">
        <?php postThumbnail('at-card-post__thumb'); ?>
        <div class="at-card-post__legend">
            <h3 class="at-card-post__title"><?php the_title(); ?></h3>
            <div class="at-card-post__description"><?php echo get_the_content(); ?></div>
            <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" class="at-btn at-btn--small">Saiba mais</a>
        </div>
    </article>
<?php elseif('post' == get_post_type()) :?>
    <article class="at-card-post">
        <?php postThumbnail('at-card-post__thumb at-card-post__thumb--medium'); ?>
        <div class="at-card-post__legend">
            <h3 class="at-card-post__title"><?php the_title(); ?></h3>
            <div class="at-card-post__description"><?php echo get_the_content(); ?></div>
            <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" class="at-btn at-btn--small">Saiba mais</a>
        </div>
    </article>
<?php elseif('depoimentos' == get_post_type()): ?>
    <article class="at-card-post">
        <?php postThumbnail('at-card-post__thumb at-card-post__thumb--small'); ?>
        <div class="at-card-post__legend">
            <div class="at-card-post__description"><?php echo get_the_content(); ?></div>
            <h3 class="at-card-post__people"><?php the_title(); ?></h3>
            <p class="at-card-post__role"><?php the_field('tipo_tratamento'); ?></p>
        </div>
    </article>
<?php endif; ?>
