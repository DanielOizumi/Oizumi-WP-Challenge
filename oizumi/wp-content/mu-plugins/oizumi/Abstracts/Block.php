<?php
/**
 * Abstract Block Class
 *
 * This abstract class serves as a template for creating custom Gutenberg blocks within the Oizumi plugin.
 * It provides essential properties and methods for block registration and initialization.
 *
 * @package Oizumi
 */

namespace Oizumi\Abstracts;

abstract class Block
{
    protected $name = '';
    protected $title = '';
    protected $description = '';
    protected $template = '';
    protected $category = '';
    protected $icon = '';
    protected $keywords = [];
    protected $mode = 'auto';
    protected $supports = [];

    /**
     * Constructor function for the Block class.
     */
    function __construct()
    {
        // Hook into ACF initialization to perform block setup.
        add_action('acf/init', [$this, 'init']);
        add_action('acf/init', [$this, 'register_block']);
        add_action('acf/init', [$this, 'acf_fields']);
    }

    /**
     * Abstract method to initialize block properties.
     */
    abstract function init();

    /**
     * Abstract method to return block data as an array.
     *
     * @return array Block data.
     */
    abstract function to_array();

    /**
     * Abstract method to define ACF fields for the block.
     */
    abstract function acf_fields();

    /**
     * Register the block with ACF.
     */
    public function register_block()
    {
        if (function_exists('acf_register_block_type')) {
            acf_register_block_type(array(
                'name'              => $this->name,
                'title'             => $this->title,
                'description'       => $this->description,
                'render_template'   => $this->template,
                'category'          => $this->category,
                'icon'              => $this->icon,
                'keywords'          => $this->keywords,
                'mode'              => $this->mode,
                'supports'          => $this->supports
            ));
        }
    }
}
