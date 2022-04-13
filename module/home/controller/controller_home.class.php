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
}//class