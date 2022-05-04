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

    public function login($args)
    {
        return $this->bll->login_BLL($args);
    } //end login

    public function get_user_data($args)
    {
        return $this->bll->get_user_data_BLL($args);
    } //end get_user_data


    public function logout()
    {
        return $this->bll->logout_BLl();
    } //end logout

    public function user_control($args)
    {
        return $this->bll->user_control_BLL($args);
    } //end user_control

    public function refresh_token_cookies($args)
    {
        return $this->bll->refresh_token_cookies_BLL($args);
    } //end refresh_token_cookies

    public function user_timeout()
    {
        return $this->bll->user_timeout_BLL();
    } //end user_timeout

    public function send_email_recover($args)
    {
        return $this->bll->send_email_recover_BLL($args);
    } //end send_email_recover

    public function update_password_recover($args)
    {
        return $this->bll->update_password_recover_BLL($args);
    } //end update_password_recover

    public function social_singin($args)
    {
        return $this->bll->social_singin_BLL($args);
    } //end social_singin_BLL
}//class
