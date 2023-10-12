<?php

/**
 * Post template
 *
 * @author   Daniel Oizumi
 * @version  1.0.0
 * @package  OizumiTheme
 */

get_header();

if (have_posts()) :
  while (have_posts()) :
    the_post();
?>
    <article>
      <header>
        <h1><?php the_title(); ?></h1>
      </header>
      <?php the_content(); ?>
    </article>
<?php
  endwhile;
else :
  // Handle the case where no content is found.
  echo "Sorry, no content found.";
endif;

get_footer();
