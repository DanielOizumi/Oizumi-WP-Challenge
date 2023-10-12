<?php

/**
 * Theme Setup and Configuration
 *
 * This code initializes various theme features and configurations, including:
 * - Enabling support for post thumbnails (featured images).
 * - Enabling support for menus.
 * - Enabling support for widgets.
 * - Registering header and footer navigation menus.
 *
 * @author   Daniel Oizumi
 * @version  1.0.0
 * @package  OizumiTheme
 */

// Enable support for post thumbnails (featured images).
add_theme_support('post-thumbnails');

// Enable support for menus.
add_theme_support('menus');

// Enable support for widgets.
add_theme_support('widgets');

/**
 * Initialize Navigation Menus
 *
 * This function registers header, footer and links menus for the theme. These menus can be
 * managed through the WordPress dashboard.
 */
function nav_init()
{
  register_nav_menu('header-nav', __('Header Menu'));
  register_nav_menu('mobile-footer-nav', __('Mobile Footer Menu'));
  register_nav_menu('footer-nav', __('Footer Menu'));
  register_nav_menu('links-nav', __('Links Menu'));
}

// Hook the 'nav_init' function to the 'init' action, which runs early in the WordPress loading process.
add_action('init', 'nav_init');
