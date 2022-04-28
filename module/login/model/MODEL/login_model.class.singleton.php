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

    public function set_user_enable($args)
    {
        return $this->bll->set_user_enable_BLL($args);
    } //end set_user_enable

    public function validate_email_user($args)
    {
        return $this->bll->validate_email_user_BLL($args);
    } //end validate_email_user
}//class
