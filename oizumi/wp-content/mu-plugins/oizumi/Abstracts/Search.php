<?php

namespace Oizumi\Abstracts;

abstract class Search
{
    protected $posts;             // posts array
    protected $search_term;       // search term
    protected $paged;             // current page
    protected $posts_per_page;    // posts per page
    protected $found_posts;       // total posts found
    protected $orderby;           // order by
    protected $order;             // order

    function __construct()
    {
        add_action('acf/init', [$this, 'init']);
    }

    abstract function init();

    abstract function load($posts, $search_term, $paged, $posts_per_page, $found_posts, $orderby, $order);
}
