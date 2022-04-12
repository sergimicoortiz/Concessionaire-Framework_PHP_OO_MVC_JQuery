<?php

class controller_error
{
    function view()
    {
        common::load_error($_GET['param']);
        common::load_model('error_model', 'insert_error', [$_GET['param'], $_GET['param2']]);
    }
}//class