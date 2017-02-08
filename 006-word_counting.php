<?php
$string = "It is rather for us, the living, we here be dedicated to the great task remaining before us.";

$string = str_replace(".","",$string);
$string = str_replace(",","",$string);
$array = (explode(" ",$string));
$new_array = array();



print_r($array);
?>