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
 ?>">)</div>
			<div class="container">
				<div class="row justify-content-end">
					<div class="col-lg-9 m-left">
						<div class="description about">
							<h2><?php echo get_cat_name(3);?></h2>
							<?php echo category_description(3); ?>
							</div>
							<div class="description works">
								<h3>What I Do?</h3>
								<div class="row works-items">
									<div class="col"><div class="work-item">
										<h4>Fashion</h4>
										<figure><a href=""><img src="img/work1.jpg" alt=""></a></figure>
									</div></div>
									<div class="col"><div class="work-item">
										<h4>Portraits</h4>
										<figure><a href=""><img src="img/work2.png" alt=""></a></figure>
									</div></div>
									<div class="col"><div class="work-item">
										<h4>Lifestyle</h4>
										<figure><a href=""><img src="img/work3.png" alt=""></a></figure>
									</div></div>
								</div>
								<a href="" class="btn btn-color-d">View my flickr profile</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section>
			<div class="clients">
				<div class="container">
					<h2>Happy Clients</h2>
					<div class="row align-items-center clients-items owl-carousel">
						<div class="col"><a href="#"><img src="img/babaria.png" alt=""></a></div>
						<div class="col"><a href="#"><img src="img/brillbird-transparent-logo.png" alt=""></a></div>
						<div class="col"><a href="#"><img src="img/logo1.png" alt=""></a></div>
						<div class="col"><a href="#"><img src="img/logo.png" alt=""></a></div>
						<div class="col"><a href="#"><img src="img/minkys_eyelash_extensions_training.png" alt=""></a></div>
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
									<h2>Portfolio</h2>
									<p>The point of using Lorem Ipsum is that it has a non  more-or-less  dik sonormal distri bution of letters, as cliper opposed. a closer look to our fully furnished and beautiful demos, which can be use easily On this find website you can find some pictures I've taken during my travel. a clo
										to our fully furnished and so beautful demos, which can be use.</p>
										<a href="">Read More...</a>
									</div>
								</div>
							</div>
							<div class="block block-photo-1 porttfolio-photo">
								<figure><img src="img/portfolio-1.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<div class="block block-photo-2 porttfolio-photo">
								<figure><img src="img/portfolio-2.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<div class="block block-photo-3 porttfolio-photo">
								<figure><img src="img/portfolio-3.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<div class="block block-photo-4 porttfolio-photo">
								<figure><img src="img/portfolio-4.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<div class="block block-photo-5 porttfolio-photo">
								<figure><img src="img/portfolio-5.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<div class="block block-photo-6 porttfolio-photo">
								<figure><img src="img/portfolio-6.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<div class="block block-photo-7 porttfolio-photo">
								<figure><img src="img/portfolio-7.jpg" alt=""></figure>
								<div class="portfolio-social-share">
									<div class="wrapper-bcg">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<a href="#" class="btn btn-color-tr">See More</a>
						</div>
					</div>
				</div>
			</section>
			<section class="section-blog">
				<div class="blog">
					<div class="container-fluid lo-container">
						<div class="absolute-header">
							<h2>Blog</h2>
							<p>The point of using Lorem Ipsum is that it has a non  more-or-less  normal distri bution of letters, as cliper opposed. a closer look to our fully,</p>
						</div>
						<div class="row">
							<div class="col-xl-4 col-lg-12 gatter-2">
								<div class="blog-item">
									<figure><img src="img/blog-1.jpg" alt=""></figure>
									<div class="blog-description">
										<h4>Design is the method of putting form and content together.</h4>
										<div class="meta-info">
											<span class="category">Life style </span><span class="date">- July 3, 2017</span>
										</div>
										<p class="blog-text">Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.</p>
										<a href="#">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-12 gatter-2">
								<div class="blog-item down-item">
									<figure><img src="img/blog-2.jpg" alt=""></figure>
									<div class="blog-description">
										<h4>Design is the method of putting form and content together.</h4>
										<div class="meta-info">
											<span class="category">Life style </span><span class="date">- July 3, 2017</span>
										</div>
										<p class="blog-text">Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.</p>
										<a href="#">Read More</a>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-12 gatter-2">
								<div class="blog-item">
									<figure><img src="img/blog-3.jpg" alt=""></figure>
									<div class="blog-description">
										<h4>Design is the method of putting form and content together.</h4>
										<div class="meta-info">
											<span class="category">Life style </span><span class="date">- July 3, 2017</span>
										</div>
										<p class="blog-text">Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.</p>
										<a href="#">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section>
				<div class="feedback">
					<div class="container feedback-decoration">
						<h2>Let's work?</h2>
						<div class="row justify-content-center">
							<div class="col-auto feedback-form">
								<form action="">
									<input type="text" id="input-nema" placeholder="*Your name">
									<input type="text" id="input-email" placeholder="*Your Email">
									<textarea name="input-message" id="input-message" rows="4" placeholder="Your message"></textarea>
									<button type="submit" class="btn btn-color-y">Send Message</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
<?php get_footer(); ?>