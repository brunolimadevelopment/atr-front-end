<?php 
    $args = array('post_type' => 'tratamentos', 'showposts' => 3, 'orderby' => 'date', 'order' => 'ASC');
    $treatments_query = new WP_Query( $args );
?>
<section class="at-treatments" id="treatments">
    <div class="container">
        <div class="row">
            <h2 class="at-title-section ml-15">Tratamentos que oferecemos</h2>
        </div>
        <div class="row at-treatments-grid">
            <?php if ( $treatments_query->have_posts() ) : 
                while ( $treatments_query->have_posts() ) : $treatments_query->the_post(); ?>
                    <div class="col-md-4 at-treatments-grid__item">
                        <?php include(locate_template('templates/content/loop.php')); ?>
                    </div>
            <?php endwhile; else :
                    _e( 'Nenhuma postagem cadastrada!' );
                endif; wp_reset_postdata(); 
            ?>
        </div>
    </div>
</section>