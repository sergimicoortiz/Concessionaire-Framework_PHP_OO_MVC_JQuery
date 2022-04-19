<?php
class search_dao
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

    public function get_categories($db)
    {
        $sql = "SELECT `category_id`,`category_name` FROM `category`;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_categories

    public function get_brands($db, $category)
    {
        $sql = "SELECT DISTINCT b.brand_id, b.brand_name FROM car c INNER JOIN models m ON m.model_id = c.model INNER JOIN brands b ON b.brand_id = m.model_brand INNER JOIN category cat ON cat.category_id = c.category WHERE cat.category_name = '" . $category . "';";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_brands

    public function get_city_all($db, $category, $brand, $city)
    {
        $sql = "SELECT DISTINCT c.city FROM car c INNER JOIN models m ON c.model = m.model_id WHERE c.category IN (SELECT `category_id` FROM category WHERE category_name = '" . $category . "') AND m.model_brand IN (SELECT brand_id FROM brands WHERE brand_name = '" . $brand . "') AND c.city LIKE '%" . $city . "%';";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_city_all

    public function get_city_none($db, $city)
    {
        $sql = "SELECT DISTINCT c.city FROM car c INNER JOIN models m ON c.model = m.model_id WHERE c.city LIKE '%" . $city . "%';";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_city_none

    public function get_city_category($db, $category, $city)
    {
        $sql = "SELECT DISTINCT c.city FROM car c INNER JOIN models m ON c.model = m.model_id WHERE c.category IN (SELECT `category_id` FROM category WHERE category_name = '" . $category . "') AND c.city LIKE '%" . $city . "%';";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_city_category
}//class
