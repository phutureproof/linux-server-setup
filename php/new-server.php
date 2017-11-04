<?php

$rootpath = $argv[1];
$servername = $argv[2];

$file = str_replace(
    ['[rootpath]', '[servername]'],
    [$rootpath, $servername],
    file_get_contents(__DIR__ . '/../config-files/nginx/sites-available/newSiteTemplate')
);

echo $file;