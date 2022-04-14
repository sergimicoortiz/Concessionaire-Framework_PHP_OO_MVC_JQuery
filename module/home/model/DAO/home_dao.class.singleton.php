<?php
class home_dao
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

    public static function get_brands_rand($db, $limit)
    {
        $sql = "SELECT DISTINCT b.brand_id, b.brand_name, b.brand_img FROM car c INNER JOIN models m ON c.model = m.model_id INNER JOIN brands b ON b.brand_id = m.model_brand ORDER BY RAND() LIMIT " . $limit . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_brands

    public static function get_category_rand($db, $limit)
    {
        $sql = "SELECT `category_id`, `category_name`, `category_img` FROM category ORDER BY RAND() LIMIT " . $limit . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_category_rand

    public static function get_fuel_rand_eco($db, $limit)
    {
        $sql = "SELECT fuel_type_id, fuel_type_name, fuel_type_img FROM fuel_type WHERE fuel_type_name NOT IN ('Gasoil', 'Gasoline') ORDER BY RAND() LIMIT " . $limit . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_fuel_rand_eco
}//class
