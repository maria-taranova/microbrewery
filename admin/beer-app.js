$(function() {
    check();

    function check() {
        if (!localStorage.sid) {
            console.log("no sid here");
            $("#splashscreen").fadeIn(500);
            $(".navbar-brand").hide();
            //document.location.href="/back-end";
        } else {
            console.log("sid here");
            $("#splashscreen").hide();
            $(".navbar-brand").show();
        }
    };
    //Sign in 
    $("#sign-in").click(function() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        $.ajax({
            url: "login-session.php",
            type: "POST",
            data: {
                email: email,
                password: password
            },
            success: function(resp) {
                var resp = JSON.parse(resp);
                if (resp.status == 'success') {
                    $("#splashscreen").fadeOut(500);
                    localStorage.sid = resp.sid;
                    console.log(localStorage.sid);
                    check();
                } else {
                    $('#hint').html(
                        '<p>email or password incorrect</p>'
                    );
                }
            },
            error: function(jqXHR, textStatus,
                errorThrown) {
                console.log(jqXHR.statusText,
                    textStatus, errorThrown);
                $('#hint').html(
                    '<p>Server is not responding</p>'
                );
            }
        });
    });
    //Sign out
    $("#log-out").click(function() {
        $.ajax({
            url: "logout-session.php",
            type: "POST",
            data: {
                logout: true
            },
            success: function(resp) {
                var resp = JSON.parse(resp);
                if (resp.status == 'success') {
                    localStorage.removeItem('sid');
                    console.log(localStorage.sid);
                    check();
                    window.location =
                        "http://localhost/microbrewery/admin/#";
                } else {
                    $('#hint').text(
                        '<p>email or password incorrect</p>'
                    );
                }
            },
            error: function(jqXHR, textStatus,
                errorThrown) {
                console.log(jqXHR.statusText,
                    textStatus, errorThrown);
                $('#hint').html(
                    '<p>Server is not responding</p>'
                );
            }
        });
    });
    

});



