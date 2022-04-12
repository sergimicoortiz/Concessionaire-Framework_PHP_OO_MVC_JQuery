<?php
class error_model
{
    private $bll;
    static $_instance;

    function __construct()
    {
        $this->bll = error_bll::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    function insert_error($args)
    {
        return $this->bll->insert_error_BLL($args);
    } //end insert_error
}//class
