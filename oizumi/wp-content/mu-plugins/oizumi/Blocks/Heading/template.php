<?php

use Oizumi\Blocks\Heading\HeadingBlock;

$heading = new HeadingBlock;

get_template_part('partials/components/block-heading', null, $heading->to_array($block));

