$(document).ready(function () {
    // load lai trang
    $.ajax({
        type: "GET",
        url: "php/logout.php",
        data: "",
        dataType: "text",
        success: function (response) {

        }
    });
    $('#login').click(function () {
        var user = $('#username').val();
        var pass = $('#password').val();
        $.ajax({
            type: "POST",
            url: "php/checklogin.php",
            data: {
                username: user,
                password: pass
            },
            dataType: "text",
            success: function (response) {
                if (response == 'false') {
                    alert('Tài khoản hoặc mật khẩu không chính xác');
                }
                else {
                    if (response == 'user') {
                        window.location.href = "user/user.html";
                    }
                    else if (response == 'admin') {
                        window.location.href = "admin/admin.html";
                    }
                }

            }
        });
    });
    $('#password').on('keypress', function (e) {
        if (e.which === 13) {
            $('#login').trigger('click');
        }
    });
})
