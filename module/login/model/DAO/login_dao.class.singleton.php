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

}//class
