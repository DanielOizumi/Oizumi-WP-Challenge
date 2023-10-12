<?php

namespace Oizumi\Blocks\Hero;

use Oizumi\Abstracts\Block;

class HeroBlock extends Block
{
    public function init()
    {
        $this->name = 'Hero';
        $this->title = 'Hero Block';
        $this->description = 'Custom two columns block.';
        $this->template = OIZUMI_MU_PLUGIN_PATH . 'Blocks/Hero/template.php';
        $this->category = 'oizumi-blocks';
        $this->icon = 'cover-image';
        $this->keywords = array('oizumi', 'two columns');
        $this->mode = 'preview';
        $this->supports = [
            'jsx'       => true,
        ];
    }

    public function acf_fields()
    {
    }

    public function to_array()
    {
        $data['column_gap'] = get_field('column_gap');

        return $data;
    }
}
