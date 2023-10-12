<?php

namespace Oizumi\Abstracts;

abstract class Post
{
    public $error;
    protected $post;

    abstract function init();

    abstract function acf_fields();

    public function __construct($init = false)
    {
        if ($init) {
            add_action('init', [$this, 'init']);
            add_action('init', [$this, 'acf_fields']);
        }
    }

    public function load($post)
    {
        $this->post = $post;
    }

    public function to_array()
    {
        $data = [
            'title'   => $this->post->post_title,
            'content' => $this->post->post_content,
        ];

        return $data;
    }

    public function generate_excerpt($text, $query, $length)
    {
        $posFound    = false;
        $words       = explode(' ', $text);
        $total_words = count($words);


        $queryLow = array_map('strtolower', $query);
        $wordsLow = array_map('strtolower', $words);

        for ($i = 0; $i < $total_words; $i++) {
            $posFound = false;
            foreach ($queryLow as $queryItem) {

                if (preg_match("/$queryItem/", $wordsLow[$i])) {
                    $posFound = $i;
                    break;
                }
            }

            if ($posFound !== false) {
                break;
            }
        }

        if ($i > ($length + ($length / 2))) {
            $i = $i - ($length / 2);
        } else {
            $i = 0;
        }


        if ($posFound === false) {
            return '';
        }

        $cutword = array_splice($words, $i, $length);
        $excerpt = implode(' ', $cutword);

        $keys       = implode('|', $query);
        $excerpt    = preg_replace(
            '/(' . $keys . ')/iu',
            '<strong class="matched-search">\0</strong>',
            $excerpt
        );
        $excerptRet = '';
        if ($i !== 0) {
            $excerptRet .= '[...] ';
        }
        $excerptRet .= $excerpt . ' [...]';

        return $excerptRet;
    }

    public function search_excerpt_highlight()
    {
        # Length in word count
        $excerptLength = 50;

        $text = wp_strip_all_tags(get_the_content(null, false, $this->post));

        # Filter double quotes from query. They will
        # work on the results side but won't help with
        # text highlighting and displaying.
        $query = get_search_query(false);
        $query = str_replace('"', '', $query);
        $query = esc_html($query);

        $query = explode(' ', $query);

        return $this->generate_excerpt($text, $query, $excerptLength);
    }

    public function gen_excerpt()
    {
        $text = $this->search_excerpt_highlight();
        $text = empty($text) ? get_the_excerpt($this->post) : $text;

        return $text;
    }
}
