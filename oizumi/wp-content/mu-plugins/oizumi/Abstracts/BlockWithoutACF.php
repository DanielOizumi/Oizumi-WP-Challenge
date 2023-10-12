<?php

/**
 * Abstract for Blocks without ACF
 * 
 * This is a work in progress
 * 
 * TODO
 * Save data and render 
 */

namespace Oizumi\Abstracts;

abstract class BlockWithoutACF
{
    protected $block_name = '';
    protected $block_folder = '';

    function __construct()
    {
        if (empty($this->block_name)) {
            return;
        }

        add_action('init', [$this, 'ensure_naming_consistency']);
        add_action('init', [$this, 'register_block']);
        add_action('enqueue_block_editor_assets', [$this, 'block_editor_assets']);
        add_action('acf/init', [$this, 'acf_fields']);
    }

    abstract function get_data();
    abstract function acf_fields();

    public function register_block()
    {
        register_block_type('oizumi-blocks/' . $this->block_name, [
            'editor_script' => 'oizumi-block-editor-' . $this->block_name,
            'render_callback' => function ($attributes) {
                var_dump($attributes);
                die();
            },
            //https://youtu.be/sYHYTk0jeE8?si=0GLn0AMpCFbJgZw5&t=1053
        ]);
    }

    function custom_block_server_render_callback($attributes)
    {
        var_dump($attributes);
        // Retrieve the heading content from block attributes
        $headingContent = $attributes['headingContent'];

        // Prepare the block HTML output, including the data-heading-content attribute
        $output = '<div class="custom-block" data-heading-content="' . esc_attr($headingContent) . '">';
        $output .= '<h2>TEST ' . esc_html($headingContent) . '</h2>';
        // Add other HTML content here
        $output .= '</div>';

        return $output;
    }

    public function block_editor_assets()
    {
        wp_enqueue_script(
            'oizumi-blocks/' . $this->block_name,
            plugins_url('oizumi/Blocks/' . $this->block_folder . '/block.js', OIZUMI_MU_PLUGIN_PATH),
            array(
                'wp-blocks',
                'wp-block-editor',
                'wp-element',
                'wp-editor',
                'wp-components',
                'wp-i18n',
                'wp-rich-text'
            ),
            OIZUMI_MU_PLUGIN_VERSION,
            true
        );
        $data = array(
            'blockName' => $this->block_name,
        );
        wp_localize_script('oizumi-blocks/' . $this->block_name, 'blockData', $data);
    }

    public function ensure_naming_consistency()
    {
        $this->block_name = strtolower($this->block_name);
        $this->block_folder = ucfirst($this->block_name);
    }
}
