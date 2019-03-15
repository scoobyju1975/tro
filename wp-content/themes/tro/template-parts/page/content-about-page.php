<?php
/**
* Template part for displaying about us page content in about us page.php
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
              <?php if(get_field('about_us_content')): ?>
              <div class="halves-container-outer">
                     <?php while(has_sub_field('about_us_content')): ?>
                     <div class="halves-container">
                            <?php if (get_sub_field( 'section_image' ) ): ?>
                            <div class="half-width-image"><img src="<?php the_sub_field('section_image'); ?>" alt="" />                     </div>
                            <?php else: // field_name returned false ?>
                            <?php endif; // end of if field_name logic ?>
                            <?php if (get_sub_field( 'section_text' ) ): ?>
                            <div class="half-width-text">
                                   <h3><?php the_sub_field('section_text'); ?></h3>
                            </div>
                            <?php else: // field_name returned false ?>
                            <?php endif; // end of if field_name logic ?>
                     </div>
                     <?php endwhile; ?>
              </div>
              <?php endif; ?>
              
              </div><!-- .entry-content -->
              </article><!-- #post-## -->