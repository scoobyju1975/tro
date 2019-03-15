<?php
/**
* Template part for displaying our family page content in our work page.php
*
* @link https://codex.wordpress.org/Template_Hierarchy
*
* @package WordPress
* @subpackage TRO
* @since 1.0
* @version 1.0
*/
?>
<article class="about-us-article" id="post-<?php the_ID(); ?>" <?php post_class(); ?> <?php get_body_class($class); ?>>
	<div class="entry-content">
<div class="full-width-image family-page">

			<div class="project-hero-inner">

				<h2><?php the_field('hero_title'); ?></h2>

			</div>

		   <img src="<?php the_field('family_hero_image'); ?>" alt="" />

		</div>

		<div class="family-text-content">
			<div class="family-text-content-inner">

				<div class="family-text-content-left">
					<p><?php the_field('family_text_copy_left'); ?></p>
				</div>

				<div class="family-text-content-right">
					<p><?php the_field('family_text_copy_right'); ?></p>

				</div>

			</div>

		</div>

	<div class="family-map">
      <?php echo do_shortcode('[map-multi-marker id="2"]'); ?>
      </div><!-- #map-canvas -->


		</div><!-- .entry-content -->
		</article><!-- #post-## -->