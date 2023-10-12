<?php

namespace Oizumi\Helpers;

class NestedNav
{
  public $nested_nav;

  public function render_nav($nav_name = 'header-menu', $args = null, $nav = null, $levels = null)
  {
    if (!$nav) {
      $nav = wp_get_nav_menu_items($nav_name, $args);
    }

    if (!$nav) {
      return;
    }

    try {
      $nav = $this->build_tree($nav);
    } catch (\Exception $e) {
      // TODO: Add logging.
    }

    echo '<ul>';

    $post_type = get_post_type();

    foreach ($nav as $item) {
      if ($item->menu_item_parent === "0") {
        $this->render_nav_item($item, $levels, 1, $post_type);
      }
    }

    echo '</ul>';
  }

  // Sets parent and children structure
  private function build_tree(array $elements, $parentId = 0)
  {
    $branch = array();

    foreach ($elements as $element) {
      if ($element->menu_item_parent == $parentId) {
        $children = $this->build_tree($elements, $element->ID);
        if ($children) {
          $element->children = $children;
        }
        $branch[] = $element;
      }
    }

    return $branch;
  }

  // Render functions
  public function render_nav_item($item, $levels = null, $current_level = 1, $post_type = null)
  {
    $current_url = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    // is it the current page
    $is_active = $current_url == $item->url;
    // is within the current section?
    $is_within_section = str_contains($current_url, $item->url);
    // if it's active, don't link it
    $link_to_url = $is_active ? "javascript:void(0)" : $item->url;
    // if it's active, add the class
    $is_active_class = $is_active == $item->url ? "is-active" : "";
    $is_in_section_class = $is_within_section == $item->url ? "is-active" : "";
    // link it only if it's not the top level, or if it is but has no children
    $should_link = (($current_level !== 1) || (($current_level === 1) && !isset($item->children)));
    // if it's a post type like "news, events, etc" add active class to menu.
    $is_in_section_class = (empty($is_active_class) && $post_type == strtolower($item->title)) ? "is-active" : $is_in_section_class;
?>
    <li class="<?php echo $is_in_section_class; ?>">
      <a class="<?php echo (!$should_link ? "has-children" : "") ?>" href="<?php echo $link_to_url; /*$should_link ? $link_to_url : "javascript:void(0)";*/ ?>" data-menu-item-id="<?php echo $item->ID; ?>"><?php echo $item->title; ?></a>
      <?php if (
        // if it has children and
        (isset($item->children) || trim($item->post_content) !== "") &&
        // level cap is null OR current level is less than or equal to level cap
        ($levels === null || $current_level <= $levels)
      ) : ?>
        <div id="menu-item-<?php echo $item->ID; ?>" class="sub-nav-container sub-nav-container__level<?php echo $current_level; ?>">
          <div class="menu-item-content <?php echo $current_level === 1 ? 'nav-container-level1' : ''; ?>">
            <?php if ($current_level === 2 && !isset($item->children)) : ?>
              <span class="description"><?php echo $item->post_content; ?></span>
            <?php else : ?>
              <ul>
                <?php /* if ($current_level === 1 && $item->url !== "#") : ?>
                  <li class="top-level <?php echo $is_active_class; ?>">
                    <a href="<?php echo $link_to_url; ?>" data-menu-item-id="<?php echo $item->ID; ?>"><?php echo $item->title; ?></a>
                  </li>
                <?php endif; */ ?>
                <?php if (isset($item->children) && is_array($item->children)) : ?>
                  <?php foreach ($item->children as $child) : ?>
                    <?php $this->render_nav_item($child, $levels, $current_level + 1, $post_type) ?>
                  <?php endforeach; ?>
                <?php endif; ?>
              </ul>
            <?php endif; ?>
          </div>
        </div>
      <?php endif; ?>
    </li>
<?php
  }
}
