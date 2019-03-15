<?php
/**
 * Template part for displaying pages on front page
 *
 * @package WordPress
 * @subpackage TRO
 * @since 1.0
 * @version 1.0
 */

global $twentyseventeencounter;

?>

<article id="panel<?php echo $twentyseventeencounter; ?>" <?php post_class( 'twentyseventeen-panel ' ); ?> >

	<div class="panel-content">
		<div class="wrap">
			<header class="entry-header">

				<?php twentyseventeen_edit_link( get_the_ID() ); ?>

			</header><!-- .entry-header -->

			<div class="entry-content">

              <?php if(get_field('home_page_sections')): ?>

              <?php while(has_sub_field('home_page_sections')): ?>

              <?php if (get_sub_field( 'image' ) ): ?>

              	<div class="full-width-image"><img src="<?php the_field('image'); ?>" alt="" /></div>

              <?php else: // field_name returned false ?>

              <?php endif; // end of if field_name logic ?>
              <?php endwhile; ?>

              <?php endif; ?>
				
			</div><!-- .entry-content -->

		</div><!-- .wrap -->
	</div><!-- .panel-content -->

</article><!-- #post-## -->
