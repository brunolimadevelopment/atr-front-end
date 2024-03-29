<?php
/**
 * Aqui vamos garantir que os comentários só vão aparecer em posts, páginas ou
 * anexos. Além disso, também bloqueamos os comentários para páginas com senha,
 * eles só vão aparecer se o usuário digitar a senha.
 */
if ( post_password_required() || ! is_singular() ) {
	return;
}
?>

<?php
/**
 * A área de comentários do tema "TwentyFourteen"
 * com algumas edições necessárias.
 */
?>
<div id="comments" class="comments-area">

	<?php if ( have_comments() ) : ?>

	<h4 class="comments-title">
		Comentários
	</h4>

	<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
	<nav id="comment-nav-above" class="navigation comment-navigation" role="navigation">
		<h5 class="screen-reader-text">Navegação dos comentários</h5>
		<div class="nav-previous"><?php previous_comments_link( 'Comentários mais antigos' ); ?></div>
		<div class="nav-next"><?php next_comments_link(  'Comentários mais recentes'  ); ?></div>
	</nav><!-- #comment-nav-above -->
	<?php endif; // Check for comment navigation. ?>

	<ol class="comment-list">
		<?php
			wp_list_comments( array(
				'style'      => 'ol',
				'short_ping' => true,
				'avatar_size'=> 34,
			) );
		?>
	</ol><!-- .comment-list -->

	<?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
	<nav id="comment-nav-above" class="navigation comment-navigation" role="navigation">
		<h5 class="screen-reader-text">Navegação dos comentários</h5>
		<div class="nav-previous"><?php previous_comments_link( 'Comentários mais antigos' ); ?></div>
		<div class="nav-next"><?php next_comments_link(  'Comentários mais recentes'  ); ?></div>
	</nav><!-- #comment-nav-above -->
	<?php endif; // Check for comment navigation. ?>

	<?php if ( ! comments_open() ) : ?>
	<p class="no-comments">Os comentários estão fechados.</p>
	<?php endif; ?>
	
	<?php endif; // have_comments() ?>

	<?php comment_form(); ?>

</div><!-- #comments -->