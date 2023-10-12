<?php
global $oizumi;

$data = $oizumi->helpers['general_options']->footer_to_array()["social_links"] ?? [];

foreach ($data as $item) :
  $image = $item['image'] ?? [];
  $url = $item['url'] ?? "#";
  if (!empty($image['sizes']['thumbnail'])) :
?>
    <div class="social-icon">
      <a href="<?php echo $url; ?>" target="_blank">
        <img src="<?php echo esc_url($image['url'] ?? ''); ?>" alt="<?php echo esc_attr($image['alt'] ?? ''); ?>">
      </a>
    </div>
<?php
  endif;
endforeach;
?>