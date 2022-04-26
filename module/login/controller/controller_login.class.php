<?php

class controller_login
{
    function view()
    {
        common::load_view('top_page_login.php', LOGIN_VIEW_PATH . "login.html");
    } //end view

    function view_register()
    {
        common::load_view('top_page_login.php', LOGIN_VIEW_PATH . "register.html");
    } //end vire_register
}//class