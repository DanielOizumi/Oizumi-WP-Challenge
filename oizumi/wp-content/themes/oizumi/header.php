<?php

/**
 * Header template
 *
 * @author   Daniel Oizumi
 * @version  1.0.0
 * @package  OizumiTheme
 */

?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <title><?php wp_title('&ndash;', true, 'right'); ?></title>
  <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
  <?php wp_head(); ?>
</head>

<body class="oizumi-body <?php echo implode(" ", get_body_class()); ?>">
  <a href="#oizumi-main-content" class="skip-main-button">Skip to main content</a>
  <?php get_template_part('partials/components/header', null, $args); ?>
  <main id="oizumi-main-content">
    <div class="oizumi-wrapper">