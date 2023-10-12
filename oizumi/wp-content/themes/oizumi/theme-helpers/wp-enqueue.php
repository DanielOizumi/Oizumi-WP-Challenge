<?php

/**
 * Enqueue Main Scripts and Styles for the Theme
 *
 * This code registers and enqueues the main JavaScript and stylesheet (CSS) files
 * for your WordPress theme. It ensures that the necessary assets are loaded
 * on the front-end of your site.
 * 
 * It uses CACHE_BUST_STRING constant that is defined in the functions.php file.
 *
 * @author   Daniel Oizumi
 * @version  1.0.0
 * @package  OizumiTheme
 */

// Enqueue main script
function assets_add_scripts()
{
  // Register and enqueue the 'assets-dist-js' script
  wp_register_script('assets-dist-js', get_template_directory_uri() . '/assets/dist/js/main.js', array('jquery'), CACHE_BUST_STRING, true);
  wp_enqueue_script('assets-dist-js');
}
add_action('wp_enqueue_scripts', 'assets_add_scripts');

// Enqueue main stylesheet
function assets_add_styles()
{
  // Enqueue the 'assets-dist-css' stylesheet
  wp_enqueue_style('assets-dist-css', get_template_directory_uri() . '/assets/dist/css/style.css', [], CACHE_BUST_STRING);
}
add_action('wp_enqueue_scripts', 'assets_add_styles');
