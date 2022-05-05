function ajaxPromise(sUrl, sType, sTData, sData = undefined) {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: sUrl,
            type: sType,
            dataType: sTData,
            data: sData
        }).done((data) => {
            resolve(data);
        }).fail((jqXHR, textStatus, errorThrow) => {
            reject(errorThrow);
        });
    });
}//end ajaxPrimise

function loadIn(ms = 500, timeout = 0) {
    setTimeout(function () {
        $("#overlay").fadeIn(ms);
    }, timeout);
};//end loadIn


function loadOut(ms = 400, timeout = 400) {
    setTimeout(function () {
        $("#overlay").fadeOut(ms);
    }, timeout);
};//end loadOut

function friendlyURL(url) {
    var link = "";
    url = url.replace("?", "");
    url = url.split("&");
    cont = 0;
    for (var i = 0; i < url.length; i++) {
        cont++;
        var aux = url[i].split("=");
        if (cont == 2) {
            link += "/" + aux[1] + "/";
        } else {
            link += "/" + aux[1];
        }
    }
    //return "http://localhost/Concessionaire-Framework_PHP_OO_MVC_JQuery" + link;
    return window.location.origin + "/Concessionaire-Framework_PHP_OO_MVC_JQuery" + link;
}//end friendlyURL

function user_info_menu() {
    if (localStorage.getItem('token')) {
        ajaxPromise(friendlyURL('?page=login&op=get_user_data'), 'POST', 'JSON', { 'token': localStorage.getItem('token') })
            .then(function (data) {
                //console.log(data);
                if (data == 'error') {
                    $('<a></a>').attr('href', friendlyURL('?page=login&op=view')).attr('data-tr', 'login').appendTo('#user_info').html('Login');
                } else {
                    $('<img>').attr('src', data.avatar).appendTo('#user_info');
                    $('<span></span>').appendTo('#user_info').html(data.username);
                    $('<span></span>').appendTo('#user_info').attr('data-tr', 'logout').attr('id', 'btn-logout').html('Logout');

                }//end else if 
            })
            .catch(function () {
                console.log('user_info_catch');
                $('<a></a>').attr('href', friendlyURL('?page=login&op=view')).attr('data-tr', 'login').appendTo('#user_info').html('Login');
            })//end ajaxPromise
    } else {
        $('<a></a>').attr('href', friendlyURL('?page=login&op=view')).attr('data-tr', 'login').appendTo('#user_info').html('Login');
    }//end else if
}//end user_ingo_menu

function logout() {
    ajaxPromise(friendlyURL('?page=login&op=logout'), 'POST', 'JSON')
        .then(function (data) {
            if (data == 'ok') {
                localStorage.removeItem('token');
                localStorage.removeItem('user_likes');
                var callback = friendlyURL('?page=home&op=view');
                window.location.href = callback;
            }//end if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=logout_error_ajax');
            window.location.href = callback;
        })//end ajaxpromise
}//end logout

function user_timeout() {
    ajaxPromise(friendlyURL('?page=login&op=user_timeout'), 'POST', 'JSON')
        .then(function (data) {
            //console.log(data);
            if (data == 'error') {
                toastr.warning('Your session will be closed because of inactivity.');
                setTimeout(function () {
                    logout();
                }, 1500);
            }//end if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=user_timeout_error_ajax');
            window.location.href = callback;
        });//end ajaxptromise
}//end user_timeout

function user_control() {
    ajaxPromise(friendlyURL('?page=login&op=user_control'), 'POST', 'JSON', { 'token': localStorage.getItem('token') })
        .then(function (data) {
            //console.log(data);
            if (data == 'error') {
                toastr.warning('Your session will be closed.');
                setTimeout(function () {
                    logout();
                }, 1500);
            }//end if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=user_control_error_ajax');
            window.location.href = callback;
        });//end ajaxptromise
}//end user_control

function refresh_token_cookies() {
    ajaxPromise(friendlyURL('?page=login&op=refresh_token_cookies'), 'POST', 'JSON', { 'token': localStorage.getItem('token') })
        .then(function (data) {
            //console.log(data);
            if (data == 'error') {
                logout();
            } else {
                localStorage.setItem('token', data);
            }//end else if
        })
        .catch(function () {
            var callback = friendlyURL('?module=error&op=view&param=503&param2=refresh_token_error_ajax');
            window.location.href = callback;
        })//end ajaxpromise
}//end refresh_token

$(document).ready(function () {

    toastr.options = {
        "preventDuplicates": true,
    };

    $(document).on('click', '#btn-logout', function () {
        logout();
    })//end clickLogout

    setInterval(function () {
        if (!localStorage.getItem('time_interval')) {
            localStorage.setItem('time_interval', 0);
        }
        const time = 5000 + parseInt(localStorage.getItem('time_interval'));
        localStorage.setItem('time_interval', time);
        if (localStorage.getItem('time_interval') >= 600000) { //600000 default
            localStorage.setItem('time_interval', 0);
            if (localStorage.getItem('token')) {
                user_timeout();
                refresh_token_cookies();
            }
        }
    }, 5000)

    if (localStorage.getItem('token')) {
        user_control();
    }

    user_info_menu();
})//end ready