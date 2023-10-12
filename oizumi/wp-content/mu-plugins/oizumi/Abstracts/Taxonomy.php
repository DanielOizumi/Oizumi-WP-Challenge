<?php

namespace Oizumi\Abstracts;

abstract class Taxonomy
{
    protected $labels;
    protected $name;
    protected $args;
    protected $posts;

    public function __construct()
    {
        $this->init();
        add_action('init', [$this, 'register']);
    }

    abstract function init();

    public function register()
    {
        register_taxonomy($this->name, $this->posts, $this->args);
    }
}
