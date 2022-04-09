<?php
class common
{
    public static function load_error()
    {
        //echo 'error common';
        require_once(VIEW_PATH_INC . 'top_page.php');
        require_once(VIEW_PATH_INC . 'menu.html');
        require_once(VIEW_PATH_INC . '404.html');
        require_once(VIEW_PATH_INC . 'footer.html');
    } //end load error

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

}//class