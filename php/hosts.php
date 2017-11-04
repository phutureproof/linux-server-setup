<?php

$hostFile = '/mnt/c/Windows/System32/drivers/etc/hosts';
$hosts = file($hostFile);
$domain = $argv[1];
$patternDomain = '!'.preg_quote($domain).'!';
$found = false;
foreach ($hosts as $host) {
    if( preg_match($patternDomain, $host)){
        $found = true;
    }
}
if(!$found) {
    array_push($hosts, "\n127.0.0.1\t{$domain}");
    file_put_contents($hostFile, implode('', $hosts));
    echo "New windows hosts entry added: 127.0.0.1\t{$domain}";
} else {
    echo "Entry already added to windows hosts file.";
}
