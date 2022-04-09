function check_email() {
    result = true;

    var pname = /^[a-zA-Z]+[\-'\s]?[a-zA-Z]{2,51}$/;
    var pmessage = /^[0-9A-Za-z\s]{20,100}$/;
    var pmail = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;

    if ($("#name").val() === "" || $("#name").val() === "Introduce tu nombre") {
        $("#name").focus().after("<span class='error'>Introduce tu nombre</span>");
        return false;
    } else if (!pname.test($("#name").val())) {
        $("#name").focus().after("<span class='error'>El nombre tiene un minimo de 3 caracteres</span>");
        return false;
    }
    if ($("#email").val() === "" || $("#email").val() === "Introduce tu email") {
        $("#email").focus().after("<span class='error'>Introduce tu email</span>");
        return false;
    } else if (!pmail.test($("#email").val())) {
        $("#email").focus().after("<span class='error'>El formato del mail es incorrecto</span>");
        return false;
    }
    if ($("#matter").val() === "Seleccione un asunto") {
        $("#matter").focus().after("<span class='error'>Seleccione un asunto</span>");
        return false;
    }
    if ($("#message").val() === "" || $("#message").val() === "Seleccione un asunto") {
        $("#message").focus().after("<span class='error'>Introduzca su mensaje</span>");
        return false;
    } else if (!pmessage.test($("#message").val())) {
        $("#message").focus().after("<span class='error'>El mensaje tiene un minimo de 20 caracteres</span>");
        return false;
    }

    if (result) {
        data = Object.fromEntries(new FormData(document.getElementById('contact_form')));
        send_email(data);
    }
}//end check_email

function send_email(data_email) {
    ajaxPromise(friendlyURL('?page=contact&op=send_email_contact'), 'POST', 'JSON', data_email)
        .then(function (data) {
            if (data == 'ok') {
                document.getElementById('status').innerHTML = 'Email Sended';
            } else {
                var callback = friendlyURL('?page=error&op=503&desc=send_email_ajax_error');
                window.location.href = callback;
            }//end else if
        })
        .catch(function () {
            var callback = friendlyURL('?page=error&op=503&desc=send_email_ajax_catch');
            window.location.href = callback;
        })//end ajaxPromise
}

function clicks_contact() {
    $(document).on('click', '#send_contact', function () {
        check_email();
    })//end send
}//end clicks_contact

$(document).ready(function () {
    clicks_contact();
});//end ready