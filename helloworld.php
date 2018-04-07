<?php

$textList = [
    "Hello",
    ",",
    " ",
    "World",
    "!"
];

$text = implode($textList);

echo $text;
echo "<br/>";
echo file_get_contents(".env");
