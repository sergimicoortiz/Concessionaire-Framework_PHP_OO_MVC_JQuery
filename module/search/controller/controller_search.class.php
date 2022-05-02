<?php
session_start();
if (isset($_SESSION["time"])) {
    $_SESSION["time"] = time();
}
class controller_search
{
    function get_categories()
    {
        echo json_encode(common::load_model('search_model', 'get_categories'));
    } //end get_categories

    function get_brands()
    {
        echo json_encode(common::load_model('search_model', 'get_brands', [$_POST['category']]));
    } //end get_brands

    function get_city()
    {
        echo json_encode(common::load_model('search_model', 'get_city', [$_POST['category'], $_POST['brand'], $_POST['city']]));
    } //end get_city
}//class