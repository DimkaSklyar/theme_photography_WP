<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package photography
 */

?>
<footer class="footer-page">
	<div class="container">
		<div class="row align-items-baseline">
			<div class="col-xl-3 col-lg-3 col-md-4 mb-footer">
				<div class="logo logo-bottom">
					<a href="#"><?php 
					$logo = get_custom_logo();
					if (!$logo)
						echo '<img src="' . get_template_directory_uri() . '/img/logo-.png" alt="">';
					?>
					<span><?php 
					$logo = get_custom_logo();
					if ($logo)
						echo $logo;
					else
						echo bloginfo('name'); 
					?></span>
				</a>
			</div>
			<h4>Contact</h3>
				<address>
					<?php 
					$id = 66;
					$post_id = get_post($id);
					$content = $post_id->post_content;
					echo $content;
					?>
				</address>
				<div class="sub-social">
					<h4>Follow me on:</h4>
					<ul>
						<?php 
						the_post();
						$icons = get_post_meta(get_option('page_on_front'), 'fontAwesome', false);
						$social_url = get_post_meta(get_option('page_on_front'), 'socialURL', false);
						?>

						<?php for ($i=0; $i < count($social_url); $i++) { ?>
						<li>
							<a href="<?php echo $social_url[$i] ?>" title="<?php echo get_the_title(); ?>"><i class="fa <?php echo $icons[$i]  ?>" aria-hidden="true"></i></a>
						</li>
						<?php } ?>
					</ul>
				</div>
			</div>
			<div class="col-xl-4 col-lg-4 col-md-8 mb-footer">
				<h3>Latest Blog Posts</h3>
				<div class="latest-post">
					<?php global $post;
					$args = array( 'posts_per_page' => 2, 'offset'=> 0, 'category' => 7 );
					$myposts = get_posts( $args );
					foreach( $myposts as $post ) : setup_postdata($post); ?>
					<div class="latest-post-item">
						<figure><a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a></figure>
						<div class="latest-post-item-desc">
							<p><?php the_title(); ?></p>
							<span class="category">
								<?php 
								$posttags = get_the_tags();
								$count=0;
								if ($posttags) {
									foreach($posttags as $tag) {
										$count++;
										if (1 == $count) {
											echo $tag->name . ' ';
										}
									}
								}
								?>
							</span><span class="date">- <?php echo get_the_date('M d Y'); ?></span>
						</div>
					</div>
				<?php endforeach; ?>
				<?php wp_reset_postdata() ?>
				<a href="#" class="latest-post-more">More...</a>
			</div>
		</div>
		<div class="col-xl-2 col-lg-2 col-md-4 offset-no-margin no-gatter mb-footer">
			<div class="quick-link">
				<h3>Quick Link</h3>
				<ul>
					<?php wp_nav_menu(); ?>
				</ul>
			</div>
		</div>
		<div class="col-xl-3 col-lg-3 col-md-8 insta no-gatter mb-footer">
			<h3><?php echo get_cat_name(13);?></h3>
			<div class="insta-footer">
				<?php
				$post_id = 68;
				$i = 1;
				$field = get_post_meta( $post_id, 'multiupload', true );
				foreach ($field as $imgurl) {
					if($imgurl != ''){
						echo '<figure class="ins-block inst-'.$i++.'"><a href="#"><img src="' .$imgurl. '" alt=""></a></figure>';
					}
				}
				?>
			</div>
		</div>
	</div>
</div>
</footer>
<section>
	<div class="copyright">
		<p>All Rights @ 2017 By Nazmul Hasan Jingar</p>
	</div>
</section>
<?php wp_footer(); ?>
</body>

</html>
