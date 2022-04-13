<?php
class home_model
{
    private $bll;
    static $_instance;

    function __construct()
    {
        $this->bll = home_bll::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function get_brands_rand($args)
    {
        return $this->bll->get_brands_rand_BLL($args);
    }
}//class
