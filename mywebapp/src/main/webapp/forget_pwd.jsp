<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password!</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;1,300&display=swap');
    *{
        margin: 0;
        padding: 0;
        outline: none;
        border: none;
        text-decoration: none;
        box-sizing: border-box;
        font-family: 'Montserrat', sans-serif;
    }
    body {
        width: 100vw;
        background: linear-gradient(45deg, #0d4671, #92e1e2);
        background-size: cover; 
        color: #505050;
        font-size: 14px;
        font-weight: normal;
        line-height: 1.5;
        text-transform: none;
        word-spacing: 1px;
        letter-spacing: 0.5px;
    }
    .upper-container { margin-bottom: 193px;}
    .forgot {
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
        width: 600px;
        margin: 90px auto;
        margin-bottom: 20px;
        padding: 20px;
        color:#fff;
        border-radius: 5px;
    }
    .forgot h2 { 
        font-size: 30px;
        color: orangered;
        padding-bottom: 10px;
    }
    .forgot p { font-size: 17px; }
    .forgot ol { margin-top: 10px;}
    .forgot ol li { padding-left: 10px; list-style: none; }
    .forgot-form {
        margin: 10px auto;
        width: 600px;
    }
    .email-card {
        display: flex;
        flex-wrap: wrap;
        margin-top: 10px;
        margin: 10px auto;
        padding: 5px 5px 5px 5px;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
        color:#fff;
        border-radius: 5px;
    }
    .form-group {
        display: block;
        margin: 7px 3px 7px 3px;
        padding: 5px 10px;
    }
    .form-group label { font-size: 19px; color: orange; }
    .form-group input { 
        margin-top: 8px;
        margin-bottom: 8px;
        padding-left: 8px;
        height: 35px; 
        width: 450px; 
        border-radius: 7px;
        font-size: 16px; 
    }
    .form-group input:focus { box-shadow: 0 0 8px 2px cyan;}
    .card-footer { margin: 35px 5px 20px 5px; }
    .card-footer a { padding: 8.5px; background:rgb(241, 112, 65)}
    .otp-msg { color: white; font-size: 13px; }
    .btn { 
        margin-left: 10px; 
        font-size: 15px; 
        font-weight: 500;
        height: 35px; 
        width: 190px;
        border-radius: 5px;
        background-color: green;
        color: #000;
    }
    .btn-success:hover { background-color: darkgreen; color:#fff; }
    .btn-danger:hover { background-color: rgb(249, 76, 13); color: #fff; }
    @media only screen and (max-width: 618px) {
        body {
            height: 110vh;
            background-size:cover;
            background-repeat: no-repeat;
        }
        .forgot { width: 80%; }
        .forgot-form { width: 80%; }
        .form-group input { width: 80%; font-size: 12px;}
    }
    @media only screen and (max-width: 505px) {
        .forgot h2 { font-size: 21px; }
        .forgot p { font-size: 14px; font-weight: 400;}
        .forgot ol li { font-size: 12.5px;}
        .form-group label { font-size: 16px;}
    }
    @media only screen and (max-width: 460px) {
        .card-footer {
            display: flex;
            flex-wrap: wrap;
        }
        .btn { margin-bottom: 10px; width: 70%; font-size: 13px; text-align: center; }
    }
</style>
<body>
    <div class="upper-container">
        <div class="forgot">
            <h2>Forgot your password?</h2>
            <p>To change your password, follow these four steps: </p>
            <ol class="list-unstyled">
                <li>1. Enter your registered email address below.</li>
                <li>2. Click on the Get New Password button.</li>
                <li>3. An OTP will be sent to your registered email</li>
                <li>4. Enter the OTP on the next page</li>
            </ol>
        </div>
        <div class="forgot-form">
            <form class="email-card" name="eidform" action="forgotPassword" onsubmit = "return validate()" method="POST">
                <div class="card-body">
                    <div class="form-group" id="enter-eid">
                        <label for="email-for-pass">Enter your registered email address</label><br>
                        <input class="form-control" type="text" name="email" id="email" required=""><br>
                        <span class="formerror"></span>
                        <small class="otp-msg"> You will receive an OTP to this address.</small>
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-success" type="submit">Get New Password</button>
                    <a href="Sharmaclasses.jsp" class="btn btn-danger">Back to Login</a>
                </div>
          
            </form>
        </div>
    </div>
</body>
</html>