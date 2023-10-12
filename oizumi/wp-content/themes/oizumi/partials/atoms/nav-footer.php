<?php
global $oizumi;
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