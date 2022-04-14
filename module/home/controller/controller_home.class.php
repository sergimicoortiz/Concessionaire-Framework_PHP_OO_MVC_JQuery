<?php

class controller_home
{
    function view()
    {
        common::load_view('top_page_home.php', HOME_VIEW_PATH . 'home.html');
    }

    function get_brands_rand()
    {
        echo json_encode(common::load_model('home_model', 'get_brands_rand', [5]));
    } //end get_brands

    function get_category_rand()
    {
        echo json_encode(common::load_model('home_model', 'get_category_rand', [4]));
    } //end get_category_rand

    function get_fuel_rand_eco()
    {
        echo json_encode(common::load_model('home_model', 'get_fuel_rand_eco', [2]));
    } //end get_fuel_rand_eco
}//class