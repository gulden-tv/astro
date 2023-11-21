<?php
require '/home/reg4542720/regmedmap.ru/application/Map.php';
require '/home/reg4542720/vendor/smarty/smarty/libs/Smarty.class.php';

class Smarty_MapAdmin extends Smarty {

    public function __construct()
    {
        parent::__construct();

        $this->setTemplateDir('/home/reg4542720/regmedmap.ru/templates');
        $this->setCompileDir('/home/reg4542720/regmedmap.ru/templates_c');
        $this->setCacheDir('/home/reg4542720/regmedmap.ru/cache');
        $this->setConfigDir('/home/reg4542720/regmedmap.ru/configs');

        $this->caching = 0; // Smarty::CACHING_LIFETIME_CURRENT;
        $this->assign('app_name', 'Map Admin');
    }

}
