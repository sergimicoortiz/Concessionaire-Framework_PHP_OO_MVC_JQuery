<?php
class home_bll
{
    private $dao;
    private $db;
    static $_instance;

    function __construct()
    {
        $this->dao = home_dao::getInstance();
        $this->db = db::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function get_brands_rand_BLL($args)
    {
        return $this->dao->get_brands_rand($this->db, $args[0]);
    } //end get_brands_rand_BLL

}//class
