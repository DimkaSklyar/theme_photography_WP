<?php
/*
Template Name: Theme Page
*/
?>

<?php get_header(); ?>

<section>
	<div class="section-wrapper" id="first">
		<div class="decor-image" style="background-image: url(<?php 
			$cat_id = 3;
			$cat_data = get_option("category_$cat_id");
			echo $cat_data['cat_title'];
			?>)"></div>
			<div class="container">
				<div class="row justify-content-end">
					<div class="col-lg-9 m-left">
						<div class="description about">
							<h2><?php echo get_cat_name(3);?></h2>
							<?php echo category_description(3); ?>
						</div>
						<div class="description works">
							<h3><?php echo get_cat_name(4);?></h3>
							<div class="row works-items">
								<?php 
								$args = array( 'posts_per_page' => 4, 'offset'=> 0, 'category' => 4 );
								$myposts = get_posts( $args );
								foreach( $myposts as $post ) : setup_postdata($post); ?>
								<div class="col">
									<div class="work-item">
										<h4><?php the_title(); ?></h4>
										<figure><a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a></figure>
									</div>
								</div>
							<?php endforeach; ?>
							<?php wp_reset_postdata() ?>
						</div>
						<a href="" class="btn btn-color-d">
							<?php 
							$cat_id = 4;
							$cat_data = get_option("category_$cat_id");
							echo $cat_data['cat_text1'] ;
							?>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="clients">
		<div class="container">
			<h2><?php echo get_cat_name(5);?></h2>
			<div class="row align-items-center clients-items owl-carousel">
				<?php
				$post_id = 37;
				$field = get_post_meta( $post_id, 'multiupload', true );
				foreach ($field as $imgurl) {
					if($imgurl != ''){
						echo '<div class="col"><a href="#"><img src=' .$imgurl. '></a></div>';
					}
				}
				?>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="portfolio">
		<div class="container-fluid padding-0">
			<div class="row-float">
				<div class="block block-portfolio">
					<div class="wrapper-flex align-items-center">
						<div class="portfolio-description">
							<h2><?php echo get_cat_name(6);?></h2>
							<?php echo category_description(6); ?>
							<a href="">Read More...</a>
						</div>
					</div>
				</div>

				<?php
				$post_id = 46;
				$photo = 1;
				$field = get_post_meta( $post_id, 'multiupload', true );
				foreach ($field as $imgurl) { ?>
				<div class="block block-photo-<?php echo $photo++; ?> porttfolio-photo">
					<figure>
						<?php if($imgurl != ''){
							echo '<img src=' .$imgurl. '>';
						}?>
					</figure>
					<div class="portfolio-social-share">
						<div class="wrapper-bcg">
							<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
				<?php }
				?>
				<a href="#" class="btn btn-color-tr">
					<?php 
					$cat_id = 6;
					$cat_data = get_option("category_$cat_id");
					echo $cat_data['cat_text1'] ;
					?>
				</a>
			</div>
		</div>
	</div>
</section>
<section class="section-blog">
	<div class="blog">
		<div class="container-fluid lo-container">
			<div class="absolute-header">
				<h2><?php echo get_cat_name(7);?></h2>
				<?php echo category_description(7); ?>
			</div>
			<div class="row">

				<?php
				$number_post = 1;
				$args = array( 'posts_per_page' => 3, 'offset'=> 0, 'category' => 7 );
				$myposts = get_posts( $args );
				foreach( $myposts as $post ) : setup_postdata($post); 
					?>
					<div class="col-xl-4 col-lg-12 gatter-2">
						<div class="blog-item <?php echo $number_post == 2 ? 'down-item' : '' ?>">
							<figure><?php the_post_thumbnail(); ?></figure>
							<div class="blog-description">
								<h4><?php the_title(); ?></h4>
								<div class="meta-info">
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
									</span><span class="date">-<?php echo get_the_date('M d Y'); ?></span>
								</div>
								<?php the_content(); ?>
								<a href="<?php the_permalink(); ?>">Read More</a>
							</div>
						</div>
					</div>
					<?php $number_post++; ?>	
				<?php endforeach; ?>
				<?php wp_reset_postdata() ?>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="feedback" style="background-image: url(<?php 
			$cat_id = 11;
			$cat_data = get_option("category_$cat_id");
			echo $cat_data['cat_title'];
			?>)">
		<div class="container feedback-decoration">
			<h2><?php echo get_cat_name(11);?></h2>
			<div class="row justify-content-center">
				<div class="col-auto feedback-form">
					<form action="">
						<input type="text" id="input-nema" placeholder="*Your name" required>
						<input type="text" id="input-email" placeholder="*Your Email" required>
						<textarea name="input-message" id="input-message" rows="4" placeholder="Your message"></textarea>
						<button type="submit" class="btn btn-color-y">Send Message</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>