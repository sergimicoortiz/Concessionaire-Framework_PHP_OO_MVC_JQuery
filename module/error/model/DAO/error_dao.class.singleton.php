<?php
class error_dao
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

    function insert_error($db, $error, $desc)
    {
        $sql = "INSERT INTO `error`(`error_date`, `error_type`, `error_description`) VALUES (CURRENT_TIME(),'" . $error . "','" . $desc . "');";
        return $db->ejecutar($sql);
    }
}//class
