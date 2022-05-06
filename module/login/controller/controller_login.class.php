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

    function set_user_enable()
    {
        echo json_encode(common::load_model('login_model', 'set_user_enable', [$_POST['estado'], $_POST['id']]));
    } //end set_user_enable

    function validate_email_user()
    {
        echo json_encode(common::load_model('login_model', 'validate_email_user', [$_POST['token']]));
    } //end validate_email_user

    function login()
    {
        echo json_encode(common::load_model('login_model', 'login', [$_POST['username'], $_POST['password']]));
    } //end login

    function get_user_data()
    {
        echo json_encode(common::load_model('login_model', 'get_user_data', [$_POST['token']]));
    } //end get_user_data

    function logout()
    {
        echo json_encode(common::load_model('login_model', 'logout'));
    } //end logout

    function user_control()
    {
        echo json_encode(common::load_model('login_model', 'user_control', [$_POST['token']]));
    } //end user_control

    function refresh_token_cookies()
    {
        echo json_encode(common::load_model('login_model', 'refresh_token_cookies', [$_POST['token']]));
    } //end refresh_token_cookies

    function user_timeout()
    {
        echo json_encode(common::load_model('login_model', 'user_timeout'));
    } //end user_timeout

    function send_email_recover()
    {
        echo json_encode(common::load_model('login_model', 'send_email_recover', [$_POST['email']]));
    } //end send_email_recover

    function update_password_recover()
    {
        echo json_encode(common::load_model('login_model', 'update_password_recover', [$_POST['token'], $_POST['password']]));
    } //end send_email_recover

    function social_singin()
    {
        echo json_encode(common::load_model('login_model', 'social_singin', [$_POST['username'], $_POST['email'], $_POST['profile'], $_POST['user_id'], $_POST['provider']]));
    } //end social_singin
}//class