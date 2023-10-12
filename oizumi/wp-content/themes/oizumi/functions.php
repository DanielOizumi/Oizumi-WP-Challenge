<?php

/**
 * Theme Initialization and Helper Files
 * 
 * This code initializes the theme and includes various helper files required for its functionality.
 * It defines the CACHE_BUST_STRING constant for cache-busting assets.
 *
 * @package  OizumiTheme
 * @version  1.0.0
 */

// Define the CACHE_BUST_STRING using the theme version
//define('CACHE_BUST_STRING', wp_get_theme()->get('Version'));

// To facilitate developing
// Comment it for production
define( 'CACHE_BUST_STRING', time()); 

// Define an array of helper files to include
$helper_files = [
  'dump-die.php',
  'mime-types.php',
  'theme-support.php',
  'wp-enqueue.php',
];

// Include the helper files
foreach ($helper_files as $file) {
  $path = dirname(__FILE__) . '/theme-helpers/' . $file;
  require_once $path;
}
