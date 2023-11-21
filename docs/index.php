<?php

require '/home/reg4542720/astro.gulden.tv/application/Map.php';
require '/home/reg4542720/vendor/smarty/smarty/libs/Smarty.class.php';
$smarty = new Smarty;
require_once '../configs/config.php';

//$smarty->debugging = true;

$template_dir = $smarty->getTemplateDir();

if(isset($_GET) && isset($_GET['q'])) {
    if( file_exists ($template_dir[0].$_GET['q'].".tpl")) {
        if( $_GET['q'] == "groups" ) {
            $map = new Map();
            $smarty->assign('points', $map->getMapJsEntries());
        }
        $smarty->display($_GET['q'].".tpl");
    }
    else
        $smarty->display("404.tpl");
} else {
    $map = new Map();
    $smarty->assign('count', $map->countLocations());
    $smarty->assign('locations', $map->getAllLocations());
    $smarty->display('index.tpl');
}

