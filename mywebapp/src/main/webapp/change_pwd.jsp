<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<title> Change Password </title>
	<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
	<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;1,300&display=swap');
    *{
        margin: 0; padding: 0; outline: none; border: none;
        text-decoration: none; box-sizing: border-box;
    }
	body {
        width: 100vw;
        background-image: linear-gradient(45deg, #0d4671, #92e1e2); 
        background-size: cover; line-height: 1.5; letter-spacing: 0.5px;
        word-spacing: 1px; font-family: 'Montserrat', sans-serif;
    }
    .strongpwd {
        width: 520px;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
        margin: 100px auto 0px auto; padding: 20px;
        color:#fff; border-radius: 10px; font-size: 15px;
    }
    .strongpwd h2 { color: orangered; }
    .strongpwd p { font-size: 15px;}
    .strongpwd ol li { font-size: 13.5px; padding-left: 10px;}
	.pwd-container {
        justify-content: center; width: 520px;
		margin: 32px auto 100px auto; height: 330px;
		background: #fff;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
		box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
        border-radius: 10px;
	}
	.pwd-container h2 {
        padding: 20px; padding-left: 20px; padding-bottom: 5px; color: orange;
	}
	.form{
        width: 500px; height: 200px; border-radius: 10px; padding: 0px 5px 20px 30px;
    }
	.form input[type="password"], input[type="text"] {
        width: 350px; height: 35px; background: transparent;
        border-bottom: 1px solid #ff7200;
        border-top: none; border-right: none; border-left: none;
        color: #fff; font-size: 15px; letter-spacing: 2px; 
        word-spacing: 5px; margin-top: 10px; margin-bottom: 10px; padding-left: 10px;
    }
    .form input[type="submit"] {
        align-items: center; text-align: center; width: 200px;
        height: 40px; background: #ff7200; margin-top: 30px;
        font-size: 18px; border-radius: 10px; cursor: pointer;
        transition: 0.4s ease; letter-spacing: 1.5px;
        text-decoration: none; color: #000; font-weight: bold;
    }
    .form input[type="submit"]:hover{ background: green; }
    .form input::placeholder { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;}
    .formerror {
        color: red; font-size: small; font-style: italic;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }
	.custom-control-label::before { background-color: #dee2e6; border: #dee2e6 }
    #eye-icon { color:#fff; margin-left: -30px; font-size: 11px; }
    @media screen and (max-width: 575px) {
        body { 
            background-size: contain;
            background-position: center center;
            background-attachment: fixed;
            height: 130vh; 
        }
        .strongpwd { display: flex; flex-wrap: wrap; width: 360px; }
        .pwd-container { width: 350px; }
        .form input[type="password"] { width: 250px; }
        #eye-icon { margin-left: -40px; }
        .bttn { margin-bottom: 100px; }
    }
    @media screen and (max-width: 370px) {
        .strongpwd { margin-left: 50px; }
        .pwd-container { margin-left: 50px;}
    }
    @media only screen and (max-width: 555px) {
        body { background-position: 100%;}
        .strongpwd h2 { font-size: 25px;}
        .strongpwd p { font-size: 13px;}
        .pwd-container h2 { font-size: 25px; }
    }
    @media  only screen and (max-width: 338px) {
        .pwd-container { height: 300px; width: 350px; }
    }
</style>
</head>
<body>
    <div class="center-content">
        <div class="strongpwd">
            <h2>Strong Password</h2>
            <p>To make your password strong, it must contain: </p>
            <ol class="list-unstyled">
                <li>1. Upper-case letters (A-Z).</li>
                <li>2. Lower-case letters (a-z).</li>
                <li>3. Numbers (0-9) and Special Characters (e.g. !,#,$).</li>
                <li>4. Password length greater than or equal to 8.</li>
            </ol>
        </div>
        <div class="pwd-container">
            <h2> Reset Password</h2>
            <div class="form">
                <form action="newPassword" name="resetform" onsubmit="return validateform()" method="post">
                    <div id="password">
                        <label for="password"></label>
                        <input class="inp_font" type="password" id="pwd" name="password" placeholder="PASSWORD" required>
                        <i class="fa-sharp fa-solid fa-eye-slash" id="eye-icon" onclick="showPassword(this)"></i>
                        <br><b><span class="formerror"></span></b>
                    </div>
                    <div id="cpassword">
                        <label for="cpassword"> </label>
                        <input class="inp_font" type="password" id="cpwd" name="cpassword" placeholder="CONFIRM PASSWORD" required>
                        <i class="fa-sharp fa-solid fa-eye-slash" id="eye-icon" onclick="showPassword2(this)"></i>
                        <br><b><span class="formerror"></span></b>
                    </div>
                    <input type="submit" id="submit" value="RESET">
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    function clearErrors(id) {
        error_element = document.getElementById(id);
        error_element.getElementsByClassName('formerror')[0].innerHTML = "";
    }
    function seterror(id, error) {
        element = document.getElementById(id);
        element.getElementsByClassName('formerror')[0].innerHTML = error;

    }
    function validateform() {
        var returnval = true;
        let spChars = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/;
        let spcharsNum = /[0123456789]+/
        let spCharsForPwd = /[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz]+/;
        //For Password
        var password = document.forms['resetform']["password"].value;
        if (password.length < 8) {
            seterror("password", "* Password should be of atleast 8 characters long!");
            returnval = false;
        }
        else if ((spCharsForPwd.test(password) && spChars.test(password)) == false) {
            seterror("password", "* Password must contain atleast one Special-Characters, Upper-case letter, Lower-case letters");
            returnval = false;
        }
        else
            clearErrors("password");
        //For Confirm Password
        var cpassword = document.forms['resetform']["cpassword"].value;
        if (password != cpassword) {
            seterror("cpassword", "* Confirm-Password should match with Password!");
            returnval = false;
        }
        else
            clearErrors("cpassword");

        return returnval;
    }
    function showPassword(chic) {
        var passwrd = document.getElementById("pwd");
        if (passwrd.type == "password") {
            passwrd.type = "text";
        } else {
            passwrd.type = "password";
        }
        chic.classList.toggle("fa-eye");
    }
    function showPassword2(chic) {
        var passwrd = document.getElementById("cpwd");
        if (passwrd.type == "password") {
            passwrd.type = "text";
        } else {
            passwrd.type = "password";
        }
        chic.classList.toggle("fa-eye");
    }
</script>
</html>