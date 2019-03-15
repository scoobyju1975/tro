<?php
/**
* Template part for displaying our work page content in our work page.php
*
* @link https://codex.wordpress.org/Template_Hierarchy
*
* @package WordPress
* @subpackage TRO
* @since 1.0
* @version 1.0
*/
?>
<article class="about-us-article our-work-page" id="post-<?php the_ID(); ?>" <?php post_class(); ?> <?php get_body_class($class); ?>>
    <div class="entry-content work-content">
                <div class="grid-container">
                    <div class="grid-container-inner">
                        <?php if(get_field('further_work_work_page')): ?>
                        <?php while(has_sub_field('further_work_work_page')): ?>
                        <?php
                        $post_object = get_sub_field('select_work_work_page');
                        if( $post_object ):
                        // override $post
                        $post = $post_object;
                        setup_postdata( $post );
                        ?>
                        <div class="grid">
                            <figure class="effect-ming">
                                <?php if (get_field( 'image_for_boxes' ) ): ?>
                                <img src="<?php the_field('image_for_boxes'); ?>" alt="" />
                                <?php else: // field_name returned false ?>
                                <?php endif; // end of if field_name logic ?>
                                <figcaption>
                                <div class="fig-text-holder">
                                    <?php if (get_field( 'project_title' ) ): ?>
                                    <h2><?php the_field('project_title'); ?></h2>
                                    <?php else: // field_name returned false ?>
                                    <?php endif; // end of if field_name logic ?>
                                    <?php if (get_field( 'project_subtitle' ) ): ?>
                                    <p><?php $summary = get_field('project_subtitle');
                                    echo substr($summary, 0, 90); ?>...</p>
                                    <?php else: // field_name returned false ?>
                                    <?php endif; // end of if field_name logic ?>
                                </div>
                                <a href="<?php echo get_permalink(); ?>"></a>
                                </figcaption>
                            </figure>
                        </div>
                        <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
                        <?php endif; ?>
                        <?php endwhile; ?>
                        <?php endif; ?>
                    </div>
                </div>
        </div><!-- .entry-content -->
        </article><!-- #post-## -->