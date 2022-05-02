<?php
class login_bll
{
    private $dao;
    private $db;
    static $_instance;

    function __construct()
    {
        $this->dao = login_dao::getInstance();
        $this->db = db::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function insert_user_BLL($args)
    {
        $id = common::generate_token_secure(10);
        $token_email = common::generate_token_secure();
        $username = $args[0];
        $email = $args[1];
        $password = password_hash(strval($args[2]), PASSWORD_DEFAULT, ['cost' => 12]);
        $avatar = 'https://i.pravatar.cc/150?u=' . md5(trim($args[1]));
        $data_email['to_name'] = $username;
        $data_email['to_email'] = $email;
        $data_email['token'] = $token_email;
        $insert = $this->dao->insert_user($this->db, $id, $token_email, $username, $email, $password, $avatar);
        if ($insert) {
            mail::verify_user($data_email);
        } //end if
        return $insert;
    } //end insert_user_BLL

    public function validate_user_BLL($args)
    {
        return $this->dao->validate_user($this->db, $args[0], $args[1]);
    } //end validate_user_BLL

    public function set_user_enable_BLL($args)
    {
        switch ($args[0]) {
            case TRUE:
                return $this->dao->enable_user($this->db, $args[1]);
                break;
            case FALSE:
                return $this->dao->disable_user($this->db, $args[1]);
                break;
            default:
                return $this->dao->disable_user($this->db, $args[1]);
                break;
        } //end swich
    } //end set_user_enable_BLL

    public function validate_email_user_BLL($args)
    {
        $user_id = $this->dao->get_user_from_token($this->db, $args[0]);

        if (count($user_id) == 1) {
            return  $this->dao->enable_user($this->db, $user_id[0]['id']);
        } else {
            return false;
        } //end else if

    } //end validate_email_user_BLL

    public function login_BLL($args)
    {
        $pass_db = $this->dao->get_user_password($this->db, $args[0])[0]['password'];
        $pass_ok = password_verify(strval($args[1]), $pass_db);
        if ($pass_ok) {
            session_start();
            $_SESSION['time'] = time();
            $_SESSION['user'] = $args[0];
            return middleware::encode_jwt($args[0]);
        } else {
            return 'error';
        } //end else if
    } //end login_BLL

    public function get_user_data_BLL($args)
    {
        $username = middleware::decode_jwt($args[0]);
        if ($username['name']) {
            return $this->dao->get_user_data($this->db, $username['name'])[0];
        } else {
            return 'error';
        } //end else if
    } //end get_user_data_BLL

    public function logout_BLl()
    {
        session_start();
        unset($_SESSION['user']);
        unset($_SESSION['time']);
        session_destroy();
        return 'ok';
    } //end logout_BLl
}//class
