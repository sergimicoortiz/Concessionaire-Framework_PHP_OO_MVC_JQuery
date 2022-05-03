<?php
class shop_dao
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

    public function list_cars($db, $offset, $limit)
    {
        $sql = "SELECT c.car_id, c.matricula, c.bastidor, m.model_name, b.brand_name, c.price, c.km, c.description, f.fuel_type_name, c.extres, c.f_mat, cat.category_name, c.lat, c.lon, c.city, c.view_count, (SELECT i.car_img_file FROM car_img i WHERE i.car_ref = c.car_id LIMIT 1) img FROM car c INNER JOIN models m ON m.model_id = c.model INNER JOIN brands b ON b.brand_id = m.model_brand INNER JOIN fuel_type f ON f.fuel_type_id = c.fuel_type INNER JOIN category cat ON cat.category_id = c.category LIMIT " . $offset . "," . $limit . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //list_cars

    public function list_cars_filters($db, $offset, $limit, $filters)
    {
        $sql = "SELECT c.car_id, c.matricula, c.bastidor, m.model_name, b.brand_name, c.price, c.km, c.description, f.fuel_type_name, c.extres, c.f_mat, cat.category_name, c.lat, c.lon, c.city, c.view_count, (SELECT i.car_img_file FROM car_img i WHERE i.car_ref = c.car_id LIMIT 1) img FROM car c INNER JOIN models m ON m.model_id = c.model INNER JOIN brands b ON b.brand_id = m.model_brand INNER JOIN fuel_type f ON f.fuel_type_id = c.fuel_type INNER JOIN category cat ON cat.category_id = c.category " . $filters . " LIMIT " . $offset . "," . $limit . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //list_cars_filters

    public function list_brands($db)
    {
        $sql = "SELECT DISTINCT b.brand_name FROM car c INNER JOIN models m ON c.model = m.model_id INNER JOIN brands b ON b.brand_id = m.model_brand;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //list_brands

    public function list_category($db)
    {
        $sql = "SELECT category_name FROM category;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //list_category

    public function list_fuels($db)
    {
        $sql = "SELECT fuel_type_name FROM fuel_type;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //list_fuels

    public function list_city($db)
    {
        $sql = "SELECT DISTINCT city FROM car;";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //list_city

    public function count_cars($db)
    {
        $sql = "SELECT COUNT(*) AS count FROM car";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //count_cars

    public function count_cars_filters($db, $filters)
    {
        $sql = "SELECT COUNT(DISTINCT c.car_id) AS count FROM car c INNER JOIN models m ON m.model_id = c.model INNER JOIN brands b ON b.brand_id = m.model_brand INNER JOIN fuel_type f ON f.fuel_type_id = c.fuel_type INNER JOIN category cat ON cat.category_id = c.category " . $filters . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //count_cars_filters

    public function details_car($db, $id)
    {
        $sql = "SELECT c.car_id, c.matricula, c.bastidor, m.model_name, b.brand_name, c.price, c.km, c.description, f.fuel_type_name, c.extres, c.f_mat, cat.category_name, c.lat, c.lon, c.city, c.view_count FROM car c INNER JOIN models m ON m.model_id = c.model INNER JOIN brands b ON b.brand_id = m.model_brand INNER JOIN fuel_type f ON f.fuel_type_id = c.fuel_type INNER JOIN category cat ON cat.category_id = c.category WHERE c.car_id=" . $id . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end details_car

    public function details_car_img($db, $id)
    {
        $sql = "SELECT `car_img_file` FROM `car_img` WHERE `car_ref` = " . $id . ";";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end details_car_img

    public function add_view_car($db, $id)
    {
        $sql = "UPDATE `car` SET `view_count`= view_count + 1 WHERE `car_id` = " . $id . ";";
        return $db->ejecutar($sql);
    } //end add_view_car

    public function get_user_likes($db, $username)
    {
        $sql = "SELECT car_like FROM likes WHERE id_user = (SELECT id FROM user WHERE username = '" . $username . "');";
        $ejecutar = $db->ejecutar($sql);
        return $db->listar($ejecutar);
    } //end get_user_likes

    public function user_like($db, $username, $car_id)
    {
        $sql = "CALL likes((SELECT id FROM user WHERE username = '" . $username . "'), " . $car_id . ");";
        return $db->ejecutar($sql);
    } //end user_like
}//class
