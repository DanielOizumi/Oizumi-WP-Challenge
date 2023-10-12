<?php

/**
 * Autoloader for mu-plugin.
 * 
 * This Must Use Plugin enables a seamless transition to a headless WordPress setup, separating content management from the front-end for flexible and dynamic website and app creation.
 * 
 * ACF PRO validation:
 * This plugin requires Advanced Custom Fields PRO to be active.
 * 
 * @return array
 */

namespace Oizumi;

define('OIZUMI_MU_PLUGIN_VERSION', '1.0.0');
define('OIZUMI_MU_PLUGIN_PATH', plugin_dir_path(__FILE__));

class Oizumi
{
    private $classes;

    public function __construct()
    {
        // Set Classes
        $this->classes = [
            'blocks' => [
                'carousel_gb'       => 'Oizumi\Blocks\Carousel\CarouselBlock',
                'heading_gb'        => 'Oizumi\Blocks\Heading\HeadingBlock',
                'hero_gb'           => 'Oizumi\Blocks\Hero\HeroBlock',
            ],
            'helpers' => [
                'general_options'   => 'Oizumi\Helpers\GeneralOptions',
                'nested_nav'        => 'Oizumi\Helpers\NestedNav',
            ]
        ];

        // Initializes
        $this->do_actions();

        $this->do_filters();

        $this->init_custom_classes();
    }

    /**
     * Initialize action hooks for the application.
     *
     * @return void
     */
    public function do_actions()
    {
    }

    /**
     * Initialize filter hooks for the application.
     *
     * @return void
     */
    public function do_filters()
    {
        if (function_exists('add_filter')) {
            // Saves ACF's settings under './acf' directory.
            add_filter('acf/settings/save_json', function ($path) {
                $path = plugin_dir_path(__FILE__) . 'acf';
                return $path;
            });

            // Automatically loads ACF's settings under './acf' directory.
            add_filter('acf/settings/load_json', function ($path) {
                $path[] = OIZUMI_MU_PLUGIN_PATH . 'acf';

                return $path;
            });

            // Create customm category in Gutenberg block
            add_filter('block_categories_all', function ($block_categories, $editor_context) {
                if (!empty($editor_context->post)) {
                    array_unshift(
                        $block_categories,
                        array(
                            'slug'  => 'oizumi-blocks',
                            'title' => 'Oizumi Blocks',
                            'icon'  => null,
                        )
                    );
                }
                return $block_categories;
            }, 10, 2);
        }
    }

    /**
     * Initialize all classes for the application.
     *
     * @return void
     */
    protected function init_custom_classes()
    {
        foreach ($this->classes as $classe_type => $classes) {
            foreach ($classes as $class_instance => $class) {
                if (is_int($class_instance)) {
                    // In some cases we just want to initialize.
                    new $class;
                } else {
                    $this->$classe_type[$class_instance] = new $class(true);
                }
            }
        }
    }

    /**
     * Get post object.
     *
     * @return object
     */
    public function get_object_from_post($post)
    {
        $post_types = [];

        $type = $post->post_type;

        $post_types[$type]->load($post);

        return $post_types[$type];
    }

    /**
     * Get data from post.
     *
     * @return array
     */
    public function get_data($post = null, $template = null)
    {
        if (is_null($post)) {
            global $post;
        }

        if (!is_null($template)) {
            $post->post_type = $template;
        }

        return $this->get_object_from_post($post)->to_array();
    }
}
