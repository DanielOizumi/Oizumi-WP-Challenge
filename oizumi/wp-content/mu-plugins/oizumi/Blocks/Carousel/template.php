<?php

use Oizumi\Blocks\Carousel\CarouselBlock;

$carousel = new CarouselBlock;

get_template_part('partials/components/block-carousel', null, $carousel->to_array($block));

