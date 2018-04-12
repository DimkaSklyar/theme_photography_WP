<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package photography
 */

?>
<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title><?php echo wp_get_document_title(); ?></title>
	<script src="https://use.fontawesome.com/bc10fcc3e2.js"></script>
	<?php wp_head(); ?>

</head>

<body>
	<header class="header-page">
		<div class="container">
			<div class="row top-menu"> 
				<div class="col-xs-3 col-sm-3 mobile-menu-wrapper">
					<a href="#" id="touch-menu">
						<div id="nav-icon4">
							<span></span>
							<span></span>
							<span></span>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-12 col-xs-9 col-sm-9 logo-wrapper">
					<div class="logo logo-top">
						<a href="<?php echo home_url(); ?>">
						<?php 
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
				</div>
				<div class="w-100"></div>
				<nav class="col-lg-8 col-xs-12 col-sm-12 top-nav">
					<?php wp_nav_menu( array(
						'container'       => 'ul',
						'menu_class'      => 'nav',
						'walker'          => new myMenu(),
					) ); ?>
				</nav>
			</div>
		</div>
	</header>
	<div class="slide">
		<div class="container">
			<div class="row slide-align">
				<div class="greeting">
					<?php 
						the_post();
						the_content(); 
					?>
					<?php 
						$buttonText = get_post_meta( get_option('page_on_front'), 'buttonText', true);
						if (!empty($buttonText))
							echo '<a href="#" class="btn btn-color-y ">' . $buttonText . '</a>';
					?>
				</div>
			</div>
		</div>
		<div class="social">
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
		<div class="decoration bottom-left"></div>
		<div class="decoration bottom-right"></div>
		<a href="#first">
			<div class="arrow">
				<span></span>
				<span></span>
			</div>
		</a>
	</div>
	
