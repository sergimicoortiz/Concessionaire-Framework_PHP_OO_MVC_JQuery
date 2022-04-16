<?php

class controller_shop
{
    function view()
    {
        common::load_view('top_page_shop.php', SHOP_VIEW_PATH . 'shop.html');
    }

    function list_cars()
    {
        echo json_encode(common::load_model('shop_model', 'list_cars', [$_POST['offset'], $_POST['limit']]));
    } //list_cars

    function list_cars_filters()
    {
        echo json_encode(common::load_model('shop_model', 'list_cars_filters', [$_POST['offset'], $_POST['limit'], $_POST['f_data']]));
    } // end list_cars_filters

    function list_brands()
    {
        echo json_encode(common::load_model('shop_model', 'list_brands'));
    } //list_brands

    function list_category()
    {
        echo json_encode(common::load_model('shop_model', 'list_category'));
    } //list_category

    function list_fuels()
    {
        echo json_encode(common::load_model('shop_model', 'list_fuels'));
    } //list_fuels

    function list_city()
    {
        echo json_encode(common::load_model('shop_model', 'list_city'));
    } //list_city

    function count_cars()
    {
        echo json_encode(common::load_model('shop_model', 'count_cars', [$_POST['filters']]));
    } //end count_cars

    function details_car()
    {
        echo json_encode(common::load_model('shop_model', 'details_car', [$_POST['id']]));
    } //end details_car
}//class