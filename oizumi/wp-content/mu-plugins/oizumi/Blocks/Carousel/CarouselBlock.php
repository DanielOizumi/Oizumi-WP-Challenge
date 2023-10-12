<?php

namespace Oizumi\Blocks\Carousel;

use Oizumi\Abstracts\Block;

class CarouselBlock extends Block
{
    public function init()
    {
        $this->name = 'Carousel';
        $this->title = 'Carousel Block';
        $this->description = 'Custom carousel block.';
        $this->template = OIZUMI_MU_PLUGIN_PATH . 'Blocks/Carousel/template.php';
        $this->category = 'oizumi-blocks';
        $this->icon = 'slides';
        $this->keywords = array('oizumi', 'carousel');
        $this->mode = 'edit';
        $this->supports = [
            'jsx'       => true,
        ];
    }

    public function acf_fields()
    {
    }

    public function to_array($block = null)
    {
        $data['block'] = $block;

        $data['block-acf'] = get_field('carousel');

        return $data;
    }
}
