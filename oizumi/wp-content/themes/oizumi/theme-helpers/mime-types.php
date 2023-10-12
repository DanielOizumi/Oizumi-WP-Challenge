<?php

/**
 * Enable SVG Uploads in WordPress
 *
 * This code allows WordPress to accept and handle SVG (Scalable Vector Graphics) files.
 * It filters the allowed file types and MIME types to include SVG files.
 *
 * @author   Daniel Oizumi
 * @version  1.0.0
 * @package  OizumiTheme
 */

add_filter('wp_check_filetype_and_ext', function ($data, $file, $filename, $mimes) {
  $filetype = wp_check_filetype($filename, $mimes);
  return [
    'ext' => $filetype['ext'],
    'type' => $filetype['type'],
    'proper_filename' => $data['proper_filename']
  ];
}, 10, 4);

function cc_mime_types($mimes)
{
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');
