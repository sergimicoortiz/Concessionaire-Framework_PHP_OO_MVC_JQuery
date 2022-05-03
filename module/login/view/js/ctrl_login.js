////VIEWS///

function load_login() {
    $('#login_div').html('<form id="form_login" method="post" class="form">' +
        '<fieldset><label for="username"><input type="text" placeholder="Usernme" name="username" id="username"></label>' +
        '    <label for="password"><input type="password" placeholder="Password" name="password" id="password"></label>' +
        '    <span id="login_errors" class="errors"></span><br>' +
        '    <span class="button" id="send_btn">Send</span>' +
        '    <br><span class="login_msg">You don\'t have an account, registere <a href="' + friendlyURL('?page=login&op=view&param=register') + '">HERE</a></span>' +
        '</fieldset>' +
        '<button id="btn-recover">Recover</button>' +
        '</form>');
    clicks_login();
}//end load_login

function load_register() {
    $('#login_div').html(
        '<form id="form_register" method="post" class="form">' +
        '    <fieldset><label for="username"><input type="text" placeholder="Usernme" name="username" id="username"> <span' +
        '                            id="register_errors_username" class="errors"></span></label>' +
        '            <label for="password"><input type="password" placeholder="Password" name="password" id="password"><span' +
        '                            id="register_errors_password" class="errors"></span></label>' +
        '            <label for="email"><input type="text" placeholder="Email" name="email" id="email"><span' +
        '                            id="register_errors_email" class="errors"></span></label>' +
        '            <span class="button" id="send_btn">Send</span>' +
        '    </fieldset>' +
        '</form>');
    clicks_register();
}//end load_register

function load_recover_pass() {
    $('#login_div').html(
        '<form id="form_recover" method="post" class="form">' +
        '    <fieldset><label for="password"><input type="password" placeholder="Password" name="password" id="password"></label>' +
        '            <label for="password2"><input type="password" placeholder="Repeat the password" name="password2" id="password2"><span' +
        '                            id="error_recover" class="errors"></span></label>' +
        '            <span class="button" id="send_btn">Send</span>' +
        '    </fieldset>' +
        '</form>');
    clicks_recover();
}//end load_recover

function load_recover_email() {
    $('#login_div').html('<form id="form_login" method="post" class="form">' +
        '<fieldset><label for="email"><input type="text" placeholder="Email" name="email" id="email"></label><span' +
        '                            id="error_recover" class="errors"></span></label><br>' +
        '    <span class="button" id="send_email_recover">Send</span>' +
        '</fieldset>' +
        '</form>');
    clicks_recover();
}//load_recover_email

///REGISTER////

function validate_regex_register() {
    const username = $('#username').val();
    const password = $('#password').val();
    const email = $('#email').val();
    var email_regex = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
    var user_regex = /^[a-zA-Z0-9]*$/;
    var error = false;

    $('#register_errors_username').html(null);
    $('#register_errors_email').html(null);
    $('#register_errors_password').html(null);

    if (username.length === 0) {
        $('#register_errors_username').html('*You have to introduce an username');
        error = true;
    } else if (user_regex.test(username) === false) {
        $('#register_errors_username').html("*The username's format is incorrect");
        error = true;
    };//end else if

    if (email.length === 0) {
        $('#register_errors_email').html('*You have to introduce an email');
        error = true;
    } else if (email_regex.test(email) === false) {
        $('#register_errors_email').html("*The email's format is incorrect");
        error = true;
    };//end else if

    if (password.length < 8) {
        $('#register_errors_password').html('*The password need a minimum of 8 characters');
        error = true;
    }

    if (error === false) {
        validate_php_register();
        //console.log('ok reg');
    }//end if
}//end validate_regex_register

function validate_php_register() {
    const data_form = Object.fromEntries(new FormData(document.getElementById('form_register')));
    ajaxPromise(friendlyURL('?page=login&op=validate_user'), 'POST', 'JSON', data_form)
        .then(function (data) {
            //console.log(data);
            if (data[0]['cont'] == 0) {
                insert_user(data_form);
            } else {
                $('#register_errors_email').html('*The username or the email are already taken.');
            }//end else if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=login_register_validate_error_ajax');
            window.location.href = callback;
        })//end ajaxpromise

}//end validate_php_register

function insert_user(data) {
    ajaxPromise(friendlyURL('?page=login&op=insert_user'), 'POST', 'JSON', data)
        .then(function (data) {
            if (data == true) {
                toastr.success('You will recive an email to validate your acount');
                setTimeout(function () {
                    var callback = friendlyURL('?module=home&op=view');
                    window.location.href = callback;
                }, 4000);//end timeout
            } else {
                var callback = friendlyURL('?module=error&op=view&param=503&param2=login_insert_user_error_data');
                window.location.href = callback;
            }//end else if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=login_insert_user_error_ajax');
            window.location.href = callback;
        })//end ajax
}//end insert_user

function verify_user() {
    const token = window.location.pathname.split('/')[5];
    ajaxPromise(friendlyURL('?page=login&op=validate_email_user'), 'POST', 'JSON', { 'token': token })
        .then(function (data) {
            //console.log(data);
            if (data) {
                toastr.success('Account verifyed, you will be redirected to the login page.');
                setTimeout(function () {
                    var callback = friendlyURL('?module=login&op=view');
                    window.location.href = callback;
                }, 4000);//end timeout

            } else {
                var callback = friendlyURL('?module=error&op=view&param=503&param2=login_validate_email_error_ajax');
                window.location.href = callback;
            }//end else if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=login_validate_email_error_ajax');
            window.location.href = callback;
        })//end ajaxpromise
}//end verify_user

function clicks_register() {
    $(document).on('click', '#send_btn', function (e) {
        e.preventDefault();
        validate_regex_register();
    })//end click

    $(document).keypress(function (e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            validate_regex_register();
        }//end if
    });
}//end clicks_register

///LOGIN///

function validate_regex_login() {
    const username = $('#username').val();
    const password = $('#password').val();
    var user_regex = /^[a-zA-Z0-9]*$/;
    var error = false;

    $('#login_errors').html(null);

    if (password.length < 8) {
        $('#login_errors').html('*The password need a minimum of 8 characters');
        error = true;
    }

    if (username.length === 0) {
        $('#login_errors').html('*You have to introduce an username');
        error = true;
    } else if (user_regex.test(username) === false) {
        $('#login_errors').html("*The username's format is incorrect");
        error = true;
    };//end else if

    if (error === false) {
        login();
    }//end if

}//end validate_regex_register

function login() {
    const data_form = Object.fromEntries(new FormData(document.getElementById('form_login')));
    ajaxPromise(friendlyURL('?page=login&op=login'), 'POST', 'JSON', data_form)
        .then(function (data) {
            if (data == 'error') {
                $('#login_errors').html("*The username or the password are incorrect");
            } else {
                localStorage.setItem('token', data);
                if (localStorage.getItem('url_callback')) {
                    var callback = localStorage.getItem('url_callback')
                    localStorage.removeItem('url_callback')
                } else {
                    var callback = friendlyURL('?page=home&op=view');
                }
                window.location.href = callback;
            }//end else if
            //console.log(data);
        })
        .catch(function () {
            $('#login_errors').html("*The username or the password are incorrect");
        })//end ajaxPromise
}//end login

function clicks_login() {
    $(document).on('click', '#send_btn', function (e) {
        e.preventDefault();
        validate_regex_login();
    })//end click

    $(document).keypress(function (e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            validate_regex_login();
        }//end if
    });//end keypress

    $(document).on('click', '#btn-recover', function (e) {
        e.preventDefault();
        var callback = friendlyURL('?page=login&op=view&param=recover_email');
        window.location.href = callback;
    });//end click recover
}//end clicks_login

/////RECOVER/////

function regex_recover() {
    $('#error_recover').empty();
    const email_token = window.location.pathname.split('/')[5];
    const form_data = Object.fromEntries(new FormData(document.getElementById('form_recover')));
    var ok = true;

    if (form_data.password.length < 8) {
        ok = false;
        $('#error_recover').html('The password must have a 8 or more characters.');
    }//end if password
    if (form_data.password2.length < 8) {
        ok = false;
        $('#error_recover').html('The password must have a 8 or more characters.');
    }//end if password2

    if (form_data.password != form_data.password2) {
        ok = false;
        $('#error_recover').html('The two passwords are different.');
    }//end if password same

    if (ok) {
        send_recover_token(email_token);
    }//end if
}//end regex_recover

function regex_recover_email() {
    const email = $('#email').val();
    var email_regex = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
    var ok = true;

    if (email.length === 0) {
        $('#error_recover').html('*You have to introduce an email');
        ok = false;
    } else if (email_regex.test(email) === false) {
        $('#error_recover').html("*The email's format is incorrect");
        ok = false;
    };//end else if

    if (ok) {
        send_email_recover();
    }
}//end regex_recover_email

function send_email_recover() {
    ajaxPromise(friendlyURL('?page=login&op=send_email_recover'), 'POST', 'JSON', { 'email': $('#email').val() })
        .then(function (data) {
            //console.log(data);
            toastr.success('The email has been sended.');
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=login_recover_email_error_ajax');
            window.location.href = callback;
        })//end ajaxpromise
}//end send_email_recover

function send_recover_token(email_token) {
    ajaxPromise(friendlyURL('?page=login&op=update_password_recover'), 'POST', 'JSON', { 'password': $('#password').val() , 'token' : email_token })
    .then(function (data) {
        if(data == 'error'){
            var callback = friendlyURL('?module=error&op=view&param=503&param2=login_recover_token_error_data');
            window.location.href = callback;
        }else{
            toastr.success('Your password has been changed.');
                setTimeout(function () {
                    var callback = friendlyURL('?module=login&op=view');
                    window.location.href = callback;
                }, 3000);//end timeout
        }//end else if
    })
    .catch(function () {
        var callback = friendlyURL('?module=error&op=view&param=503&param2=login_recover_token_error_ajax');
        window.location.href = callback;
    })//end ajaxpromise
}//end send recover

function clicks_recover() {

    $(document).on('click', '#send_email_recover', function (e) {
        e.preventDefault();
        regex_recover_email();
    })//end click

    $(document).on('click', '#send_btn', function (e) {
        e.preventDefault();
        regex_recover();
    })//end click

    $(document).keypress(function (e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            regex_recover();
        }//end if
    });//end keypress
}//end clicks_recover

$(document).ready(function () {
    var action = window.location.pathname.split('/');
    if (action[4] == "") {
        action = action[5]
    } else {
        action = action[4]
    };
    switch (action) {
        case 'login':
            load_login();
            break;
        case 'register':
            load_register();
            break;
        case 'verify':
            verify_user();
            break;
        case 'recover_email':
            load_recover_email();
            break;
        case 'recover':
            load_recover_pass();
            break;
        default:
            load_login();
            break;
    }//end swich

});//end ready