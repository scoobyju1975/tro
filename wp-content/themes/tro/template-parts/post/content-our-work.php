<?php
/**
* Template part for displaying posts
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
    <div class="entry-content work-content">
        <div class="project-hero-outer">
            <?php if (get_field( 'large_project_detail_image_top' ) ): ?>
            <div class="full-width-image project-page project-hero-inner" style="background-image: url('<?php the_field('large_project_detail_image_top'); ?>');">
                <?php else: // field_name returned false ?>
                <div class="full-width-image project-page project-hero-inner" style="background-color: <?php the_field('project_hero_color'); ?>;">
                    <?php endif; // end of if field_name logic ?>
                    <div class="project-hero-inner">
                        <div class="project-hero-inner-left">
                            <?php if (get_field( 'project_subtitle' ) ): ?>
                            <h2><?php the_field('project_subtitle'); ?></h2>
                            <?php else: // field_name returned false ?>
                            <?php endif; // end of if field_name logic ?>
                            <?php if (get_field( 'project_title' ) ): ?>
                            <h4><?php the_field('project_title'); ?></h4>
                            <?php else: // field_name returned false ?>
                            <?php endif; // end of if field_name logic ?>
                        </div>
                        <div class="project-hero-inner-right">
                            <?php if (get_field( 'project_description' ) ): ?>
                            <p><?php the_field('project_description'); ?></p>
                            <?php else: // field_name returned false ?>
                            <?php endif; // end of if field_name logic ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="project-detail-section">
                <div class="project-detail-section-inner">
                    <div class="project-detail-image-large">
                        <?php if (get_field( 'project_detail_image_left' ) ): ?>
                        <img src="<?php the_field('project_detail_image_left'); ?>" alt="" />
                        <?php else: // field_name returned false ?>
                        <?php endif; // end of if field_name logic ?>
                    </div>
                    <div class="project-detail-image-large">
                        <?php if (get_field( 'project_detail_image_right' ) ): ?>
                        <img src="<?php the_field('project_detail_image_right'); ?>" alt="" />
                        <?php else: // field_name returned false ?>
                        <?php endif; // end of if field_name logic ?>
                    </div>
                    <div class="project-detail-image-large">
                        <?php if (get_field( 'large_project_detail_image' ) ): ?>
                        <img src="<?php the_field('large_project_detail_image'); ?>" alt="" />
                        <?php else: // field_name returned false ?>
                        <?php endif; // end of if field_name logic ?>
                    </div>
                </div>
            </div>
            
            <div class="more-work">
                <div class="grid-container">
                    <h3>More Work</h3>
                    <div class="grid-container-inner">
                        <?php if(get_field('further_work')): ?>
                        <?php while(has_sub_field('further_work')): ?>
                        <?php
                        $post_object = get_sub_field('select_work');
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
            </div>
            </div><!-- .entry-content -->
            </article><!-- #post-## -->