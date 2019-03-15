<?php
/**
 * Displays footer site info
 *
 * @package WordPress
 * @subpackage TRO
 * @since 1.0
 * @version 1.0
 */

?>
<div class="site-info">
<a href="#" class="go-top">
	<span class="to-top-inner"></span>
</a>
    <div class="social-icons-container">
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
</div>
<p>© TRO. All Rights Reserved</p>
<p>An omnicom Business</p>
</div><!-- .site-info -->
