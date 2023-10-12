<?php
/**
 * Abstract for Archives
 */

namespace Oizumi\Abstracts;

abstract class Archive
{
    protected $paged = 1;
    protected $posts_per_page = 12;
    protected $order = 'DESC';
    protected $term = 0;

    abstract function load($paged, $posts_per_page, $order, $term);
    abstract function to_array($post);

    public function get_articles_posts()
    {
        $data = array();

        $query = new \WP_Query(
            array(
                'post_type'      => 'post',
                'post__in'       => $this->get_all_post_ids(),
                'orderby' => 'post__in',
                'posts_per_page' => $this->posts_per_page,
                'paged' => $this->paged,
                'tax_query' => array(
                    array(
                        'taxonomy' => get_term($this->term)->taxonomy,
                        'field' => 'term_id',
                        'terms' => $this->term
                    )
                )
            )
        );

        $data['found_posts'] = $query->found_posts;
        $data['posts'] = array();

        foreach ($query->posts as $key => $post) {
            array_push($data['posts'], $this->to_array($post));
        }

        return $data;
    }

    public function get_all_post_ids()
    {
        if ($this->order == 'ASC') {
            $this->order = 'ASC';
        } else {
            $this->order = 'DESC';
        }

        $args = array(
            'post_type' => 'post',
            'post_status' => 'publish',
            'orderby' => 'date',
            'order' => $this->order,
            'posts_per_page' => -1,
            'tax_query' => array(
                array(
                    'taxonomy' => get_term($this->term)->taxonomy,
                    'field' => 'term_id',
                    'terms' => $this->term
                )
            )
        );

        return array_unique(array_merge($this->get_sticky_posts(), wp_list_pluck(get_posts($args), 'ID')));
    }

    public function get_sticky_posts()
    {
        $data = array();

        $data = get_option('sticky_posts');

        if (!empty($data)) {
            foreach ($data as $key => $post_id) {
                if (!has_term($this->term, get_term($this->term)->taxonomy, $post_id)) {
                    unset($data[$key]);
                }
            }
        }

        return $data;
    }

}
