<?php
$carousel_items = $args['block-acf'] ?? false;
?>
<div class="oizumi-block-carousel swiper">
  <div class="swiper-wrapper">
    <?php
    foreach ($carousel_items as $key => $carousel_item) :
      $image = $carousel_item['item']['image'] ?? [];
      $title = $carousel_item['item']['title'] ?? "";
      $text = $carousel_item['item']['text'] ?? "";
    ?>
      <?php if (!empty($image['url'])) : ?>
        <div class="swiper-slide order-<?php echo $key; ?>">
          <figure>
            <img src="<?php echo esc_url($image['url'] ?? ''); ?>" alt="<?php echo esc_attr($image['alt'] ?? ''); ?>">
          </figure>
          <h3><?php echo esc_html($title); ?></h3>
          <p><?php echo esc_html($text); ?></p>
        </div>
      <?php endif; ?>
    <?php endforeach; ?>
  </div>
  <div class="swiper-pagination"></div>
</div>