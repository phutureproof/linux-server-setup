<?php

$directory = explode('/', __DIR__);
array_pop($directory);
array_pop($directory);
echo implode('/', $directory) . '/' . $argv[1];