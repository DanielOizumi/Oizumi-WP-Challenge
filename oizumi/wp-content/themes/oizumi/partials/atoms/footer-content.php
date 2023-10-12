<?php
global $oizumi;

$data = $oizumi->helpers['general_options']->footer_to_array();

echo $data["footer_content"];
?>