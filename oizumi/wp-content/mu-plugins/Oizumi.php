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

use \Oizumi\Oizumi;

// Dynamically load class files.
spl_autoload_register(function ($class) {
    // Check if the main class exists.
    if (strstr($class, "Oizumi\\") !== false) {

        // Build the path to each class file.
        $class_file = str_ireplace("Oizumi\\", "oizumi\\", $class);
        $class_file = str_ireplace("\\", "/", $class_file);
        $uri        = dirname(__FILE__) . "/{$class_file}.php";

        // Load the class
        require_once($uri);
    }
});

// Check if ACF PRO is active.
if (!class_exists('acf_pro')) {
    add_action('admin_notices', function () {
        echo '<div class="notice notice-warning"><p>ACF PRO is not active. Please activate ACF PRO to use all of the features of this site.</p></div>';
    });
}

// Create an instance of Oizumi class that can be used in the theme to get data.
$oizumi = new Oizumi();
