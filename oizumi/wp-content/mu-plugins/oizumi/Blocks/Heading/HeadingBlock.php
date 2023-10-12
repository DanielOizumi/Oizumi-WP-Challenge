<?php

namespace Oizumi\Blocks\Heading;

use Oizumi\Abstracts\Block;
use Oizumi\Helpers\TagWrapper;

class HeadingBlock extends Block
{
    public function init()
    {
        $this->name = 'Heading';
        $this->title = 'Heading Block';
        $this->description = 'Custom heading block.';
        $this->template = OIZUMI_MU_PLUGIN_PATH . 'Blocks/Heading/template.php';
        $this->category = 'oizumi-blocks';
        $this->icon = 'heading';
        $this->keywords = array('oizumi', 'heading');
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

        $data['block-acf']['heading_tag'] = get_field('heading_tag');

        $wrapper = new TagWrapper(get_field('heading_text'));
        $data['block-acf']['heading_text'] = $wrapper->wrapper();

        return $data;
    }
}
