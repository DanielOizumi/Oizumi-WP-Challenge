<?php

/**
 * Dump and Die function for debugging.
 *
 * @author   Daniel Oizumi
 * @version  1.0.0
 * @package  OizumiTheme
 *
 * @param mixed $var The variable to be inspected and dumped.
 */


function dd($var)
{
  echo "<pre>";
  var_dump($var);
  echo "</pre>";
  die();
}
