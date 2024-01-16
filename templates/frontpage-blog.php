<?php 
    $args = array('post_type' => 'post', 'showposts' => 4, 'orderby' => 'date', 'order' => 'ASC');
    $articles_query = new WP_Query( $args );
?>
<section class="at-blog" id="blog">
    <div class="container">
        <div class="row">
            <h2 class="at-title-section ml-15">Blog Atratis</h2>
        </div>
        <div class="row at-blog-grid">
            <?php if ( $articles_query->have_posts() ) : 
                while ( $articles_query->have_posts() ) : $articles_query->the_post(); ?>
                <div class="col-md-3 at-blog-grid__item">
                    <?php include(locate_template('templates/content/loop.php')); ?>
                </div>
                <?php endwhile; else :
                    _e( 'Nenhuma postagem cadastrada!' );
                endif; wp_reset_postdata(); 
            ?>
        </div>
    </div>    
</section>