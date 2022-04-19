<?php
class search_model
{
    private $bll;
    static $_instance;

    function __construct()
    {
        $this->bll = search_bll::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function get_categories()
    {
        return $this->bll->get_categories_BLL();
    } //end get_categories

    public function get_brands($args)
    {
        return $this->bll->get_brands_BLL($args);
    } //end get_brands

    public function get_city($args)
    {
        return $this->bll->get_city_BLL($args);
    } //end get_city
}//class
