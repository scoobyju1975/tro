<?php
/**
* Displays content for front page
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
            <img src="<?php the_sub_field('slide_image'); ?>" />
            <h1><?php the_sub_field('slide_title'); ?></h1>
            <p><?php the_sub_field('slide_text'); ?></p>
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
      <div class="section-button-holder">
      <a href="<?php the_sub_field('section_button_link'); ?>"><div class="section-button">
      </div></a>
    </div>
    </div>
    <?php else: // field_name returned false ?>
    <?php endif; // end of if field_name logic ?>
    <?php else: // field_name returned false ?>
    <?php endif; // end of if field_name logic ?>
    <?php endwhile; ?>
    <?php endif; ?>
    
    </div><!-- .entry-content -->
    </article><!-- #post-## -->