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
        $password = password_hash(strval($args[3]), PASSWORD_DEFAULT, ['cost' => 12]);
        $avatar = 'https://i.pravatar.cc/150?u=' . md5(trim($args[2]));
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

}//class
