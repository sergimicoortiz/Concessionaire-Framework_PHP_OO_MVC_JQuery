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
        $filters = $args[0];
        $consulta = "";
        $filters_consulta = array();

        for ($i = 0; $i < count($filters); $i++) {

            switch ($filters[$i][0]) {
                case 'c.price':
                    break;
                case 'c.view_count':
                    break;
                default:
                    if ($filters[$i][1] != "null") {
                        $filters_consulta[] = ($filters[$i][0] . " = '" . $filters[$i][1] . "'");
                    } //end if
                    break;
            } //end swich
        } //end for
        if (count($filters_consulta) != 0) {
            $consulta .= (" WHERE " . implode(' AND ', $filters_consulta));
        } //end if

        if ($consulta != '') {
            return $this->dao->count_cars_filters($this->db, $consulta);
        } else {
            return $this->dao->count_cars($this->db);
        } //end else if
    } //end count_cars_BLL

    public function list_cars_filters_BLL($args)
    {
        $filters = $args[2];
        $consulta = "";
        $filters_consulta = array();
        $order_elements = array();

        for ($i = 0; $i < count($filters); $i++) {

            switch ($filters[$i][0]) {
                case 'c.price':
                    if ($filters[$i][1] == 'maytomen') {
                        $order_elements[] = ($filters[$i][0] . " DESC");
                    } else if ($filters[$i][1] == 'mentomay') {
                        $order_elements[] = ($filters[$i][0] . " ASC");
                    } //end else if
                    break;
                case 'c.view_count':
                    if ($filters[$i][1] == 'maytomen') {
                        $order_elements[] = ($filters[$i][0] . " DESC");
                    } else if ($filters[$i][1] == 'mentomay') {
                        $order_elements[] = ($filters[$i][0] . " ASC");
                    } //end else if
                    break;

                default:
                    if ($filters[$i][1] != "null") {
                        $filters_consulta[] = ($filters[$i][0] . " = '" . $filters[$i][1] . "'");
                    } //end if
                    break;
            } //end swich

        } //end for

        if (count($filters_consulta) != 0) {
            $consulta .= (" WHERE " . implode(' AND ', $filters_consulta));
        } //end if

        if (count($order_elements) != 0) {
            $consulta .= (' ORDER BY ' . implode(',', $order_elements));
        } //end if

        return $this->dao->list_cars_filters($this->db, $args[0], $args[1], $consulta);
    } //end list_cars_filters_BLL

    public function details_car_BLL($args)
    {
        $add_view = $this->dao->add_view_car($this->db, $args[0]);
        $data['car'] = $this->dao->details_car($this->db, $args[0]);
        $data['img'] = $this->dao->details_car_img($this->db, $args[0]);
        return $data;
    } //end details_car_BLL

    public function get_user_likes_BLL($args)
    {
        $username = middleware::decode_jwt($args[0])['name'];
        if (($username != null) && ($username != "")) {
            $likes_tmp = $this->dao->get_user_likes($this->db, $username);
            $likes = [];
            foreach ($likes_tmp as $l) {
                array_push($likes, $l['car_like']);
            } //end foreach
            return $likes;
        } else {
            return 'error';
        } //end else if
    } //end get_user_likes

    public function user_like_BLL($args)
    {
        $username = middleware::decode_jwt($args[0])['name'];
        if ($username != null && $username != "") {
            return $this->dao->user_like($this->db, $username, $args[1]);
        } else {
            return false;
        } //end else if

    } //end user_like
}//class
