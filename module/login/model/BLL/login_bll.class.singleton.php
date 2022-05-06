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

    public function user_control_BLl($args)
    {
        $jwtjson = middleware::decode_jwt($args[0]);
        $user = $jwtjson['name'];
        $exp = $jwtjson['exp'];
        session_start();
        if (($_SESSION['user'] == $user) && ($exp >= time())) {
            return 'ok';
        } else {
            return 'error';
        } //end else if
    } //end user_control_BLl

    public function refresh_token_cookies_BLL($args)
    {
        $username = middleware::decode_jwt($args[0])['name'];
        if ($username) {
            return middleware::encode_jwt($username);
        } else {
            return 'error';
        } //end else if
    } //end refresh_token_cookies_BLL

    public function user_timeout_BLL()
    {
        session_start();
        if ((isset($_SESSION['time'])) && ((time() - $_SESSION['time']) <= 900)) { //900 default
            return 'ok';
        } else {
            return 'error';
        } //end else if
    } //end user_timeout_BLL

    public function send_email_recover_BLL($args)
    {
        $user = $this->dao->get_user_from_email($this->db, $args[0]);

        if (count($user) == 1) {
            $user_id = $user[0]['id'];
            $username = $user[0]['username'];
            $new_token = common::generate_token_secure();
            $email_data['to_email'] = $args[0];
            $email_data['to_name'] = $username;
            $email_data['token'] = $new_token;
            $disable_user = $this->dao->disable_user($this->db, $user_id);
            if ($disable_user) {
                $update_token = $this->dao->update_user_email_token($this->db, $username, $new_token);
                if ($update_token) {
                    $email_sended =  mail::recover_password($email_data);
                    if ($email_sended['Messages'][0]['Status'] == 'success') {
                        return 'ok';
                    } //end if
                } //end if
            } //end if
        } //end if
        return 'error';
    } // end recover_password_BLL

    public function update_password_recover_BLL($args)
    {
        $user_id = $this->dao->get_user_from_token($this->db, $args[0]);
        if (count($user_id) == 1) {
            $user_id = $user_id[0]['id'];
            $new_password = password_hash(strval($args[1]), PASSWORD_DEFAULT, ['cost' => 12]);
            $update_password = $this->dao->update_user_password($this->db, $user_id, $new_password);
            if ($update_password) {
                $enable_user = $this->dao->enable_user($this->db, $user_id);
                if ($enable_user) {
                    return 'ok';
                } //end if
            } //end if
        } //end if
        return 'error';
    } //end update_password_recover_BLL

    public function social_singin_BLL($args)
    {
        $username = $args[0];
        $email = $args[1];
        $avatar = $args[2];
        $user_id = $args[3];
        $provider = $args[4];
        $user_exist = $this->dao->validate_user($this->db, $username, $email)[0]['cont'];

        if ($user_exist == 0) {
            $insert = $this->dao->insert_user_social($this->db, $user_id, $username, $email, $avatar, $provider);
            if ($insert == false) {
                return 'error_insert';
            } //end if
        } //end if

        $valid_user = false;
        if (count($this->dao->get_user_from_email($this->db, $email, $provider)) == 1) {
            $valid_user = true;
        } //end if

        if ($valid_user == true) {
            session_start();
            $_SESSION['time'] = time();
            $_SESSION['user'] = $username;
            return middleware::encode_jwt($username);
        } //end if
        return 'error';
    } //end social_singin_BLL

}//class
