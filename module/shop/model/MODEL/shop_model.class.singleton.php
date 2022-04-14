<?php
class shop_model
{
    private $bll;
    static $_instance;

    function __construct()
    {
        $this->bll = shop_bll::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function list_cars($args)
    {
        return $this->bll->list_cars_BLL($args);
    } //list_cars

    public function list_brands()
    {
        return $this->bll->list_brands_BLL();
    } //list_brands

    public function list_category()
    {
        return $this->bll->list_category_BLL();
    } //list_category

    public function list_fuels()
    {
        return $this->bll->list_fuels_BLL();
    } //list_fuels

    public function list_city()
    {
        return $this->bll->list_city_BLL();
    } //list_city
    public function count_cars($args)
    {
        return $this->bll->count_cars_BLL($args);
    } //end count_cars
}//class
