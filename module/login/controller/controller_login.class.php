<?php

class controller_login
{
    function view()
    {
        common::load_view('top_page_login.php', LOGIN_VIEW_PATH . "login.html");
    } //end view

    function insert_user()
    {
        echo json_encode(common::load_model('login_model', 'insert_user', [$_POST['username'], $_POST['email'], $_POST['password']]));
    } //end insert_user

    function validate_user()
    {
        echo json_encode(common::load_model('login_model', 'validate_user', [$_POST['username'], $_POST['email']]));
    } //end validate_user
}//class