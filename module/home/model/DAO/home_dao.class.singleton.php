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
        $stmt = $db->ejecutar($sql);
        return $db->listar($stmt);
    } //end get_brands
}//class
