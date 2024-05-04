<?php
global $oizumi;

/**
 * Use this to find the correct array index name
 * $menu_object = get_nav_menu_locations();
 * var_dump($menu_object);
 * $meetjane->helpers['nested_nav']->render_nav("header-nav");
 */

?>
<nav class="footer-nav mobile-footer-nav can-toggle">
    <?php
    $oizumi->helpers['nested_nav']->render_nav('mobile-footer-menu');
    ?>
</nav>
<nav class="footer-nav desktop-footer-nav">
    <?php
    $oizumi->helpers['nested_nav']->render_nav('footer-menu');
    ?>
</nav>