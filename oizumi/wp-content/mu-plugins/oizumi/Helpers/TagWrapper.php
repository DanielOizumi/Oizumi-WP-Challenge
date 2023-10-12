<?php

/**
 * TagWrapper Class
 *
 * This class provides a versatile method for wrapping text lines separated by a specified
 * separator within HTML tags. Originally conceived as a replacement for <br> tags,
 * it encapsulates text within <span> elements, granting enhanced control over line breaks
 * and text formatting. This flexibility extends to optimizing text display for both mobile 
 * and desktop environments through CSS styling.
 * 
 * @author Daniel Oizumi
 * @package Oizumi\Helpers
 */

namespace Oizumi\Helpers;

class TagWrapper
{
  protected $string;
  protected $delimiter;
  protected $wrapper;

  /**
   * Constructor for the TagWrapper class.
   *
   * @param string $string    The input string to be processed.
   * @param array  $delimiter The array of HTML tags used as delimiters (default is <br> variations).
   * @param string $wrapper   The HTML tag used for wrapping (default is 'span').
   */
  public function __construct($string = "", $delimiter = ['<br>', '<br/>', '<br />'], $wrapper = "span")
  {
    $this->string = $string;
    $this->delimiter = $delimiter;
    $this->wrapper = $wrapper;
  }

  /**
   * Wrap lines within HTML tags based on the specified separator.
   *
   * @return string The processed string with lines wrapped in HTML tags.
   */
  public function wrapper()
  {

    // Remove newline characters and replace delimiters with a placeholder
    $cleaned_string = str_replace(array("\n", "\r", "\r\n"), '',  $this->string);
    $cleaned_string = str_replace($this->delimiter, '<delimiter>', $cleaned_string);

    // Split the string into an array using the placeholder
    $lines = explode('<delimiter>', $cleaned_string);

    $result = '';

    // Iterate through each line and wrap after the separator
    foreach ($lines as $key => $line) {
      if (empty($key)) {
        $result = $line;
      } else {
        $result .= " <{$this->wrapper}>{$line}</{$this->wrapper}> ";
      }
    }

    return $result;
  }
}
