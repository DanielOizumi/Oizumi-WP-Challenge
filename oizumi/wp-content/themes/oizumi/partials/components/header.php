<?php
global $oizumi;

$data = $oizumi->helpers['general_options']->header_to_array() ?? [];
$mobile_logo = $data["mobile_logo"] ?? [];
$desktop_logo = $data["desktop_logo"] ?? [];
?>
<header class="oizumi-header">
  <div class="header-main">
    <div class="header-logo">
      <a class="logo" href="<?php echo site_url(); ?>">
        <img src="<?php echo $mobile_logo['url'] ?? ''; ?>" alt="<?php echo $mobile_logo['alt'] ?? ''; ?>" class="mobile-logo" />
        <img src="<?php echo $desktop_logo['url'] ?? ''; ?>" alt="<?php echo $desktop_logo['alt'] ?? ''; ?>" class="desktop-logo" />
      </a>
    </div>
    <div class="header-buttons">
      <?php get_template_part('partials/atoms/login-btn', null, []); ?>
      <?php get_template_part('partials/atoms/signup-btn', null, []); ?>
    </div>
    <div class="header-mobile-button">
      <button>
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/assets/icons/menu-open.svg" alt="Open Menu Mobile" class="toggle-open" />
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/assets/icons/menu-close.svg" alt="Close Menu Mobile" class="toggle-close" />
      </button>
    </div>
    <nav class="header-nav">
      <div class="header-nav-wrapper can-toggle">
        <?php get_template_part('partials/atoms/nav-header', null, []); ?>
      </div>
    </nav>
  </div>
</header>