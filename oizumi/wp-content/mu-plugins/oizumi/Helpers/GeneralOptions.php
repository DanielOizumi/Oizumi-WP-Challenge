<?php

/**
 * GeneralOptions Class
 *
 * This class is responsible for managing and transmitting general options data throughout the application,
 * including information such as social links and footer disclaimers. It provides a centralized and organized
 * way to access and update these settings, enhancing the maintainability and consistency of the application.
 *
 * @package Daniel Oizumi
 * @since Version 1.0.0
 */

namespace Oizumi\Helpers;

class GeneralOptions
{
    public function __construct()
    {
        add_action('init', [$this, 'add_menu_options']);
        add_action('init', [$this, 'acf_fields']);
    }

    public function add_menu_options()
    {
        if (function_exists('acf_add_options_page')) {
            $parent = acf_add_options_page(array(
                'page_title'    => 'Oizumi General Settings',
                'menu_title'    => 'Oizumi General Settings',
                'menu_slug'     => 'oizumi-general-settings',
                'capability'    => 'edit_posts',
                'redirect'      => false
            ));
        }
    }

    public function header_to_array()
    {
        $data["mobile_logo"] = get_field('mobile_logo', 'options');
        $data["desktop_logo"] = get_field('desktop_logo', 'options');

        return $data;
    }

    public function footer_to_array()
    {
        $data["social_links"] = get_field('social_links', 'options');
        $data["footer_content"] = get_field('footer_content', 'options');

        return $data;
    }

    /**
     * ACF
     *
     * @return void
     */
    public function acf_fields()
    {
    }
}
