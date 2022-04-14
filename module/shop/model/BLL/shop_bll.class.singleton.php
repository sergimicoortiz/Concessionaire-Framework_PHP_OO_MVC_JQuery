<?php
class shop_bll
{
    private $dao;
    private $db;
    static $_instance;

    function __construct()
    {
        $this->dao = shop_dao::getInstance();
        $this->db = db::getInstance();
    }

    public static function getInstance()
    {
        if (!(self::$_instance instanceof self)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function list_cars_BLL($args)
    {
        return $this->dao->list_cars($this->db, $args[0], $args[1]);
    } //list_cars_BLl

    public function list_brands_BLL()
    {
        return $this->dao->list_brands($this->db);
    } //list_brands_BLL

    public function list_category_BLL()
    {
        return $this->dao->list_category($this->db);
    } //list_category_BLL

    public function list_fuels_BLL()
    {
        return $this->dao->list_fuels($this->db);
    } //list_fuels_BLL

    public function list_city_BLL()
    {
        return $this->dao->list_city($this->db);
    } //list_city_BLL

    public function count_cars_BLL($args)
    {
        $filters = false;
        foreach ($args[0] as $filter) {
            if ($filter[1] != 'null') {
                $filters = true;
            } //end if
        } //end foreach

        if ($filters) {
            return [1];
        } else {
            return $this->dao->count_cars($this->db);
        } //end else iff
    } //end count_cars_BLL
}//class
