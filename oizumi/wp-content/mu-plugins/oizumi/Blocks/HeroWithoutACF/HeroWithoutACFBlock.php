<?php

/**
 * Hero Blocks without ACF
 * 
 * This is a work in progress.
 * 
 * TODO
 * Save data and render 
 */

namespace Oizumi\Blocks\HeroWithoutACF;

use Oizumi\Abstracts\BlockWithoutACF;

class HeroWithoutACFBlock extends BlockWithoutACF
{
  protected $block_name = 'heroWithoutACF';

  public function get_data($block = null)
  {
  }

  public function acf_fields()
  {
  }
}
