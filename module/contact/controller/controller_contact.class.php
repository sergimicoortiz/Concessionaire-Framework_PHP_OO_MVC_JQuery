<?php

class controller_contact
{
    function view()
    {
        common::load_view('top_page_contact.php', CONTACT_VIEW_PATH . 'contact_list.html');
    } //end view

    function send_email_contact()
    {
        echo json_encode('ok');
        exit;
    }
}//class
