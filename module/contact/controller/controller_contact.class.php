<?php

class controller_contact
{
    function view()
    {
        common::load_view('top_page_contact.php', CONTACT_VIEW_PATH . 'contact_list.html');
    } //end view

    function send_email_contact()
    {
        $email['from_email'] = 'sergimicoortiz@gmail.com';
        $email['from_name'] = $_POST['name'];
        $email['to_name'] = 'Sergi Micó Ortiz';
        $email['to_email'] = 'sergimicoortiz@gmail.com';
        $email['subject'] = 'Conctact Concesionari';
        $email['text'] = null;
        $email['html'] = '<h1>' . $_POST["matter"] . '</h1><h3>FROM: ' . $_POST["email"] . '(' . $_POST["name"] . ')</h3><h3>' . $_POST["message"] . '</h3>';
        $email['custom_id'] = 'contact';
        $result = mail::send_email($email);
        
        if ($result['Messages'][0]['Status'] === 'success') {
            echo json_encode('ok');
            exit;
        } else {
            echo json_encode('error');
            exit;
        } //end if
    }
}//class
