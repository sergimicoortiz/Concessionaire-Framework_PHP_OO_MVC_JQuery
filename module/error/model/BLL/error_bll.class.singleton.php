<?php
class error_bll
{
    private $dao;
    private $db;
    static $_instance;

    function __construct()
    {
        $this->dao = error_dao::getInstance();
        $this->db = db::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    function insert_error_BLL($args)
    {
        return $this->dao->insert_error($this->db, $args[0], $args[1]);
    } //end insert_error_BLL
}//class
