<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Login Form</title>
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
        height: 100%;
        width: 100%;
        min-width: 600px;
        background: radial-gradient(rgb(179, 244, 238),rgb(129, 166, 250));
    }
    .main-content {
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        margin: 20px 20px 20px 20px;
    }
    .screen {
        min-width: 90%;
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
        margin: 20px 40px;
        margin-left: auto;
        margin-right: auto;
        padding: 15px 15px 15px 15px;
        border-radius: 10px;
        box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.1);
    }
    .container h2 {
        text-align: center;
        color: #ff7200;
        font-size: 30px;
        text-transform: uppercase;
        word-spacing: 5px; letter-spacing: 1px;
    }
    .image-container { margin: 10px 5px 5px 5px; text-align: center; }
    .container img {
        height: 280px;
        width: 300px;
        align-items: center;
    }
    hr.faceline { margin-top: 5px; border: 2px solid rgb(10, 190, 7); }
    hr.code-line { margin: 5px 5px; border: 1.5px solid rgb(235, 22, 22); }
    .code-container {
        background: #ffffff;
        border-radius: 5px;
        padding: 10px 10px 10px 10px;
    }
    .code-container p {
        color:rgb(90, 5, 248);
        text-align: center;
        font-weight: 600;
        text-decoration: underline;
    }
    pre {
        margin-left: -60px;
        padding-top: 5px;
        color: rgb(8, 8, 8);
        font-size: 11.5px;
        font-weight: 600;
    }
</style>
<body>
    <div class="main-content">
        <div class="screen">
            <div class="container">
                <h2> Sample Login Form </h2>
                <hr class="faceline">
                <div class="image-container">
                    <img src="sample_login_formimage.png" alt="">
                </div>
                <div class="code-container">
                    <p>HTML</p>
                    <pre>
                        &lt!DOCTYPE html&gt
                        &lthtml lang="en"&gt
                        &lthead&gt
                            &ltmeta charset="UTF-8"&gt
                            &ltmeta http-equiv="X-UA-Compatible" content="IE=edge"&gt
                            &ltmeta name="viewport" content="width=device-width, initial-scale=1.0"&gt
                            &lttitle&gtSign in / Sign up Page&lt/title&gt
                            &ltlink rel="stylesheet" href="style2.css"&gt
                        &lt/head&gt
                        &ltbody&gt
                            &ltsection&gt
                                &ltform action="LogSer1" name="LogForm" method="post"&gt
                                    &ltdiv class="form aside"&gt
                                        &lth2&gtLogin using your credentials&lt/h2&gt
                                        &ltinput type="email" name="eid" placeholder="Enter registered Email Id "&gt
                                        &ltinput type="password" name="pwd" placeholder="Enter Password "&gt
                                        &ltbutton class="btnn"&gt&lta href="#"&gtLOG IN&lt/a&gt&lt/button&gt
                                        &ltp class="link"&gt&lta href="forgotpassword.html"&gtForgot  your Password?&lt/a&gt&lt/p&gt
                                        &ltp class="link"&gtDon't have an account ?&lta href="Join.jsp"&gt SIGN UP &lt/a&gt &lt/p&gt
                                    &lt/div&gt
                                &lt/form&gt
                            &lt/section&gt
                        &lt/body&gt
                        &lt/html&gt
                    </pre><hr class="code-line">
                    <p>CSS</p>
                    <pre>
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
                            background: #8c8a8a;
                            height: 100%;
                        }
                        section { width: 100%; height: 100%; display: grid; justify-content: center;}
                        .form{
                            text-align: center;
                            width: 360px;
                            height: 410px;
                            box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
                            background: linear-gradient(to bottom, #00c6fb,#005bea);
                            margin: 35px 0 30px 10px; 
                            border-radius: 10px;
                            padding: 25px;
                        }
                        .form h2{
                            width: 270px;
                            color: #ff7200;
                            font-size: 17.5px;
                            text-align: center;
                            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                            background-color: #fff;
                            border-radius: 10px;
                            margin: 2px 0px 20px 15px;
                            padding: 8px;
                            text-transform: uppercase;
                        }
                        .form input{
                            width: 280px;
                            height: 35px;
                            background: transparent;
                            border-bottom: 1px solid #ff7200;
                            border-top: none;
                            border-right: none;
                            border-left: none;
                            color: #fff;
                            font-size: 15px;
                            letter-spacing: 1px;
                            margin-top: 30px;
                            font-family: sans-serif;
                        }
                        .form input:focus{ outline: none; }
                        ::placeholder{ color: #fff; font-family: Arial; }
                        .btnn{
                            text-align: center;
                            width: 200px;
                            height: 40px;
                            background: #ff7200;
                            margin-top: 30px;
                            font-size: 18px;
                            border-radius: 10px;
                            cursor: pointer;
                            color: #fff;
                            transition: 0.4s ease;
                            letter-spacing: 1.5px;
                        }
                        .btnn:hover{ background: green; }
                        .btnn a{ text-decoration: none; color: #000; font-weight: bold; }
                        .form .link{
                            font-family: Arial, Helvetica, sans-serif;
                            font-size: 17px;
                            padding-top: 20px;
                            text-align: center;
                            color: #fff;
                        }
                        .form .link a{ font-size: 16px; text-decoration: none; color: #ff7200; }
                    </pre>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

    