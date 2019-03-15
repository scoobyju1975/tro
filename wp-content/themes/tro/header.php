<?php
/**
 * The header for TRO theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'twentyseventeen' ); ?></a>

	<header id="masthead" class="site-header" role="banner">

	<div class="header-inner">

    <div class="tro-logo">
    	<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
    	<img src="<?php the_field('header_logo' , 'option'); ?>" alt="" class="svg"/>
    </a>
    </div>
    <div class="menu-holder">
    <?php echo do_shortcode("[responsive_menu_pro]"); ?>
    </div>



        <!--<div class="social-icons-container">
	<?php if(get_field('header_social' , 'option')): ?>
	<?php while(has_sub_field('header_social' , 'option')): ?>
	<?php if (get_sub_field( 'social_image' , 'option' ) ): ?>
	<div class="social-icons">
		<a href="<?php the_sub_field('social_link' , 'option' ); ?>">
			<img src="<?php the_sub_field('social_image' , 'option' ); ?>" alt="" class="svg"/>
		</a>
	</div>
	<?php else: // field_name returned false ?>
	<?php endif; // end of if field_name logic ?>
	<?php endwhile; ?>
	<?php endif; ?>
</div>-->

    </div>


	</header><!-- #masthead -->


	<div class="site-content-contain">
		<div id="content" class="site-content">
