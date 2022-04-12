<?php
class common
{
    public static function load_error($error_type = '404')
    {
        if ($error_type != '404' && $error_type != '503') {
            $error_type = '404';
        }
        require_once(VIEW_PATH_INC . 'top_page.php');
        require_once(VIEW_PATH_INC . 'menu.html');
        require_once(VIEW_PATH_INC . $error_type . '.html');
        require_once(VIEW_PATH_INC . 'footer.html');
    } //end load error

    public static function load_error_debug($e)
    {
        echo $e;
    } //end load_error_debug

    public static function load_view($top_page, $view)
    {
        $top_page = VIEW_PATH_INC . $top_page;
        $top_page_default = VIEW_PATH_INC . 'top_page.php';
        if ((file_exists($top_page)) && (file_exists($view)) && (file_exists($top_page_default))) {
            require_once($top_page_default);
            require_once($top_page);
            require_once(VIEW_PATH_INC . 'menu.html');
            require_once($view);
            require_once(VIEW_PATH_INC . 'footer.html');
        } else {
            self::load_error();
        } //end else if
    } //end load_view

    public static function load_model($model, $function = null, $args = null)
    {
        $dir = explode('_', $model);
        $path = constant(strtoupper($dir[0]) . '_MODEL_PATH') .  $model . '.class.singleton.php';
        if (file_exists($path)) {
            require_once($path);
            if (method_exists($model, $function)) {
                $obj = $model::getInstance();
                if ($args != null) {
                    return call_user_func(array($obj, $function), $args);
                }
                return call_user_func(array($obj, $function));
            }
        }
        throw new Exception();
    } //end load model

    public static function friendlyURL($url)
    {
        $link = "";
        if (URL_FRIENDLY) {
            $url = explode("&", str_replace("?", "", $url));
            foreach ($url as $key => $value) {
                $aux = explode("=", $value);
                $link .=  $aux[1] . "/";
            }
        } else {
            $link = "index.php?" . $url;
        } // end_else
        return SITE_PATH . $link;
    } // end friendlyURL
}//class