<?php
$heading_tag = $args['block-acf']['heading_tag'] ?? 'h2';
$heading_text = $args['block-acf']['heading_text'] ?? '';
?>
<div class="oizumi-block-heading">
  <<?php echo $heading_tag; ?>><?php echo $heading_text; ?></<?php echo $heading_tag; ?>>
</div>
