<?php
class login_model
{
    private $bll;
    static $_instance;

    function __construct()
    {
        $this->bll = login_bll::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function insert_user($args)
    {
        return $this->bll->insert_user_BLL($args);
    } //end insert_user

    public function validate_user($args)
    {
        return $this->bll->validate_user_BLL($args);
    } //end validate_user
}//class
