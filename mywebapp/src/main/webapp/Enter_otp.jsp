<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <title>OTP Verification</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;1,300&display=swap');
        * {
            margin: 0;
            padding: 0;
            outline: none;
            border: none;
            text-decoration: none;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }
        body {
            background-position: center;
            background: linear-gradient(to left, #02c6f1, #0083b0);
            font-weight: normal;
            line-height: 2;
            text-transform: none
        }
        .otp-container { margin: 5px 5px 5px 5px; }
        .lock-star { display: grid; justify-self: center; }
        #lockimg { margin: 30px auto -60px auto; height: 7.5rem; }
        .star-container {
            margin: 5px auto 10px auto;
            padding-left: 5px;
            width: 98px;
            height: 50px;
            text-align: center;
            font-size: 30px;
            color: black;
            background: #fff;
            letter-spacing: 8px;
            border-radius: 6px;
        }
        .otp-content {
            letter-spacing: 0.5px;
            word-spacing: 1px;
            width: 400px;
            justify-content: center;
            text-align: center;
            align-items: center;
            margin: 40px auto 5px auto;
            padding: 10px 6px 10px 6px;
            background: linear-gradient(to top, rgba(0, 0, 0, 0.8)50%, rgba(0, 0, 0, 0.8)50%);
            box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
            padding: 12px;
            color: #fff;
            border-radius: 8px;
        }
        .otp-content h3 { color: gold; }
        .otp { margin: 15px; padding-bottom: 10px; line-height: 2.5; }
        label { margin-bottom: 20px; }
        .otp input[type=text],
        input[type=submit] {
            margin: 3px;
            height: 50px;
            width: 150px;
            text-align: center;
            font-size: 22px;
            border-radius: 5px;
        }
        .otp input[type=text]:focus { box-shadow: 0 0 13px rgb(118, 246, 246); }
        #verify {
            margin-top: 20px;
            padding: 5px 5px 5px 5px;
            background-color: rgb(5, 189, 5);
            border-radius: 5px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
        }
        #verify:hover { background-color: #049349; }
    </style>
</head>

<body>
    <div class="otp-container">
        <div class="lock-star">
            <img src="lock_icon.png" id="lockimg" alt="">
            <b class="star-container">****</b>
        </div>
        <div class="otp-content">
            <i class="fa-solid fa-shield-check"></i>
            <h3>Verify OTP sent to your Email</h3>
            <div class="otp">
                <form action="otpprocess.jsp" method="post">
                    <label for="otpvalue">Enter the 4-digit OTP</label><br>
                    <input type="text" name="otpvalue" id="otpvalue"><br>
                </form>
                <input type="submit" id="verify" value="VERIFY">
            </div>
        </div>
    </div>
</body>
</html>