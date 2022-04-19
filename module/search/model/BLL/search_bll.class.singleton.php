<?php
class search_bll
{
    private $dao;
    private $db;
    static $_instance;

    function __construct()
    {
        $this->dao = search_dao::getInstance();
        $this->db = db::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function get_categories_BLL()
    {
        return $this->dao->get_categories($this->db);
    } //end get_categories_BLL

    public function get_brands_BLL($args)
    {
        return $this->dao->get_brands($this->db, $args[0]);
    } //end get_brands_BLL

    public function get_city_BLL($args)
    {
        if ($args[0] && $args[1]) {
            return $this->dao->get_city_all($this->db, $args[0], $args[1], $args[2]);
        } else if ($args[0] && !$args[1]) {
            return $this->dao->get_city_category($this->db, $args[0], $args[2]);
        } else {
            return $this->dao->get_city_none($this->db, $args[2]);
        } //end else if
    } //end get_city_BLL
}//class
