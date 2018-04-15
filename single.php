<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package photography
 */

get_header();
?>

<div id="primary" class="content-area">
	<main id="main" class="site-main">
		<div class="container">
			<div class="row">
				<h1 data-parent="<?php the_title(); ?>" class="post-style-header"><?php the_title(); ?></h1>
				<div class="col-8 offset-2 post-style">
					<figure class="post-style-thumbnail"><?php the_post_thumbnail(); ?></figure>
					<?php
					while ( have_posts() ) :
						the_post();
						the_content();
						// If comments are open or we have at least one comment, load up the comment template.
						// if ( comments_open() || get_comments_number() ) :
						// 	comments_template();
						// endif;
		endwhile; // End of the loop.
		?>
	</div>
</div>
</div>
</main><!-- #main -->
</div><!-- #primary -->

<?php
get_footer();
