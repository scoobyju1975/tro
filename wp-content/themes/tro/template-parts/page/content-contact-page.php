<?php
/**
* Template part for displaying page content in contact us page.php
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
    <div class="map">
      <?php echo do_shortcode('[map-multi-marker id="1"]'); ?>
      </div><!-- #map-canvas -->
      <div class="form-and-address">
        <div class="form-and-address-inner">
          <div class="cform">
            <h3>Contact</h3>
            <?php echo do_shortcode('[contact-form-7 id="6" title="Contact form 1"]'); ?>
          </div>
          <div class="address">
            <h3>Address Details</h3>
            <?php if(get_field('address' , 'option')): ?>
            <?php while(has_sub_field('address' , 'option')): ?>
            <?php if (get_sub_field( 'address_line' , 'option' ) ): ?>
            <span><p><?php the_sub_field('address_line' , 'option'); ?></p></span>
            <?php else: // field_name returned false ?>
            <?php endif; // end of if field_name logic ?>
            <?php endwhile; ?>
            <?php endif; ?>
            <span><p>Email: <a href="<?php the_field('email_address' , 'option'); ?>"><?php the_field('email_address' , 'option'); ?></a></p></span>
            <span><p>Phone: <?php the_field('phone_number' , 'option'); ?></p></span>
          </div>
        </div>
      </div>
      <div class="locations">
        <div class="grid-container">
          <div class="grid-container-inner">
            <h3>Our Locations</h3>
            <?php if(get_field('tro_locations' , 'option')): ?>
            <?php while(has_sub_field('tro_locations' , 'option')): ?>
            <div class="grid">
              <figure class="effect-ming">
                <?php if (get_sub_field( 'location_image' , 'option' ) ): ?>
                <img src="<?php the_sub_field('location_image' , 'option'); ?>" alt="" />
                <?php else: // field_name returned false ?>
                <?php endif; // end of if field_name logic ?>
                <?php if (get_sub_field( 'location_text' , 'option' ) ): ?>
                <figcaption>
                <div class="fig-text-holder">
                  <h2><?php the_sub_field('location_text' , 'option'); ?></h2>
                  <?php else: // field_name returned false ?>
                  <?php endif; // end of if field_name logic ?>
                  <?php if (get_sub_field( 'location_description' ) ): ?>
                  <p><?php the_sub_field('location_description'); ?></p>
                  <?php else: // field_name returned false ?>
                  <?php endif; // end of if field_name logic ?>
                </div>
                <a href="<?php the_sub_field('location_link' , 'option'); ?>"></a>
                </figcaption>
              </figure>
            </div>
            <?php endwhile; ?>
            <?php endif; ?>
          </div>
        </div>
      </div>
      </div><!-- .entry-content -->
      </article><!-- #post-## -->