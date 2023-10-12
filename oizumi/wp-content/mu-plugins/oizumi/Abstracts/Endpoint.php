<?php

namespace Oizumi\Abstracts;

abstract class Endpoint
{
    protected $routes;

    public function __construct()
    {
        $this->init();
        add_action('rest_api_init', [$this, 'register_routes']);
    }

    abstract function init();

    function add_route($namespace, $route, $args)
    {
        $this->routes[] = [
            'namespace' => $namespace,
            'route' => $route,
            'args' => $args
        ];
    }

    function register_routes()
    {
        foreach ($this->routes as $route) {
            register_rest_route($route['namespace'], $route['route'], $route['args']);
        }
    }

    function if_not_exists($field, $value)
    {
        return array_key_exists($field, $_POST) ? $_POST[$field] : $value;
    }
}
