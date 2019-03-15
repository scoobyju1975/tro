<?php
/**
* Template part for displaying page content in page.php
*
* @link https://codex.wordpress.org/Template_Hierarchy
*
* @package WordPress
* @subpackage TRO
* @since 1.0
* @version 1.0
*/
?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
  <div class="entry-content">
    <?php if(get_field('home_top_slider')): ?>
    <div class="slider-container">
      <div class="flexslider">
        <ul class="slides">
          <?php while(has_sub_field('home_top_slider')): ?>
          <li>
            <h1><?php the_sub_field('slide_title'); ?></h1>
            <img src="<?php the_sub_field('slide_image'); ?>" />
          </li>
          <?php endwhile; ?>
        </ul>
      </div>
    </div>
    <?php endif; ?>
    <?php if(get_field('home_page_sections')): ?>
    <?php while(has_sub_field('home_page_sections')): ?>
    <?php if (get_sub_field( 'image' ) ): ?>
    <div class="full-width-image"><img src="<?php the_sub_field('image'); ?>" alt="" />
      <?php if (get_sub_field( 'section_title' ) ): ?>
      <h1><?php the_sub_field('section_title'); ?></h1>
      <a href="<?php the_sub_field('section_button_link'); ?>"><div class="section-button">
        MORE
      </div></a>
    </div>
    <?php else: // field_name returned false ?>
    <?php endif; // end of if field_name logic ?>
    <?php else: // field_name returned false ?>
    <?php endif; // end of if field_name logic ?>
    <?php endwhile; ?>
    <?php endif; ?>
    
    </div><!-- .entry-content -->
    </article><!-- #post-## -->