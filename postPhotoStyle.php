<?php
/*
Template Name: Photo style
Template Post Type: post, page, product
*/
get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">
		<h1 data-parent="<?php the_title(); ?>" class="header-text-post"><?php the_title(); ?></h1>
		<?php
			the_post();
			the_content();
		?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
