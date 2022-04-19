<?php
//PROJECT
define('PROJECT', '/Concessionaire-Framework_PHP_OO_MVC_JQuery/');

//SITE_ROOT
define('SITE_ROOT', $_SERVER['DOCUMENT_ROOT'] . PROJECT);

//SITE_PATH
define('SITE_PATH', 'http://' . $_SERVER['HTTP_HOST'] . PROJECT);

//PRODUCTION
define('PRODUCTION', true);

//MODEL
define('MODEL_PATH', SITE_ROOT . 'model/');

//MODULES
define('MODULES_PATH', SITE_ROOT . 'module/');

//RESOURCES
define('RESOURCES_PATH', SITE_ROOT . 'resources/');

//UTILS
define('UTILS_PATH', SITE_ROOT . 'utils/');

//VIEW_INC
define('VIEW_PATH_INC', SITE_ROOT . 'view/inc/');

//CSS
define('CSS_PATH', SITE_ROOT . 'view/css/');

//JS
define('JS_PATH', SITE_ROOT . 'view/js/');

//IMG
define('IMG_PATH', SITE_ROOT . 'view/img/');

//LANG
define('LANG_PATH', SITE_ROOT . 'view/lang/');

//URL_FRIENDLY  ON or OFF
define('URL_FRIENDLY', true);

//////////////CONTACT//////////////

//VIEW
define('CONTACT_VIEW_PATH', MODULES_PATH . 'contact/view/');

//////////////ERROR//////////////

//MODEL
define('ERROR_MODEL_PATH', MODULES_PATH . 'error/model/MODEL/');

//////////////HOME//////////////

//VIEW
define('HOME_VIEW_PATH', MODULES_PATH . 'home/view/');

//MODEL
define('HOME_MODEL_PATH', MODULES_PATH . 'home/model/MODEL/');

//////////////SHOP//////////////

//VIEW
define('SHOP_VIEW_PATH', MODULES_PATH . 'shop/view/');

//MODEL
define('SHOP_MODEL_PATH', MODULES_PATH . 'shop/model/MODEL/');

//////////////SEARCH//////////////

//MODEL
define('SEARCH_MODEL_PATH', MODULES_PATH . 'search/model/MODEL/');
