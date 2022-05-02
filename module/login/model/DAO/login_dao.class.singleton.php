<?php
class login_dao
{
    static $_instance;

    private function __construct()
    {
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function insert_user($db, $id, $token_email, $username, $email, $password, $avatar)
    {
        $sql = "INSERT INTO user VALUES('" . $id . "', FALSE, '" . $token_email . "', '" . $username . "', '" . $email . "', '" . $password . "', 'user','" . $avatar . "');";
        return $db->ejecutar($sql);
    } //end insert_user

    public function validate_user($db, $username, $email)
    {
        $sql = "SELECT COUNT(id) cont FROM user WHERE username LIKE '" . $username . "' OR email LIKE '" . $email . "';";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end validate_user

    public function enable_user($db, $id)
    {
        $sql = "UPDATE user SET active = TRUE WHERE id = '" . $id . "';";
        return $db->ejecutar($sql);
    } //end enable_user

    public function disable_user($db, $id)
    {
        $sql = "UPDATE user SET active = FALSE WHERE id = '" . $id . "';";
        return $db->ejecutar($sql);
    } //end disable_user

    public function get_user_from_token($db, $token)
    {
        $sql = "SELECT id FROM user WHERE token_email = '" . $token . "' AND active = FALSE;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_user_from_token

    public function get_user_password($db, $username)
    {
        $sql = "SELECT password FROM user WHERE username = '" . $username . "' AND active = TRUE;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_user_password

    public function get_user_data($db, $username)
    {
        $sql = "SELECT username, email, type, avatar FROM user WHERE active = TRUE AND username = '" . $username . "';";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_user_data

}//class
