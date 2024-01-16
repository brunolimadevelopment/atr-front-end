<?php 
    $args = array('post_type' => 'depoimentos', 'showposts' => 3, 'orderby' => 'date', 'order' => 'ASC');
    $treatments_query = new WP_Query( $args );
?>
<section class="at-testimony" id="testimony">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h2 class="at-title-section">O que falam as pessoas que passaram pelos nossos tratamentos</h2>
            </div>
        </div>
        <div class="row at-testimony-grid">
            <?php if ( $treatments_query->have_posts() ) : 
                while ( $treatments_query->have_posts() ) : $treatments_query->the_post(); ?>
                    <div class="col-md-4 at-testimony-grid__item">
                        <?php include(locate_template('templates/content/loop.php')); ?>
                    </div>
            <?php endwhile; else :
                    _e( 'Nenhum depoimento cadastrado!' );
                endif; wp_reset_postdata(); 
            ?>
        </div>
    </div>
</section>