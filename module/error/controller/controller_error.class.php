<?php

class controller_error
{
    function view()
    {
        common::load_error($_GET['param']);
    }
}//class