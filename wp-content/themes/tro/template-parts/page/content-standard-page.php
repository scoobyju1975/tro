<?php
/**
* Template part for displaying about us page content in standard text page
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
	<div class="entry-content standard">
		<div class="content-inner">
			<?php the_content(); ?>
		</div>
		</div><!-- .entry-content -->
		</article><!-- #post-## -->