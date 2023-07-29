<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Contact us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
	<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
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
    body{ height: 100vh; width: 100%; }
    #active { color: white; background: black; }
    nav {
        position: relative;
        height: 100px;
        background: linear-gradient(to right, #f67867, #f8f0c2);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0px 50px 0px 100px;
    }
    nav .logo {
        height: 70px;
        width: 210px;
        min-height: 70px;
        min-width: 255px;
    }
    nav li { list-style: none; }
    nav .menu-btn i { font-size: 20px; cursor: pointer; display: none; }
    nav ul { display: flex; list-style: none; }
    nav ul li { margin: 0px 7px; }
    nav ul li a {
        color: #1d1d1d;
        text-decoration: none;
        font-size: 17px;
        font-weight: 500;
        letter-spacing: 1px;
        word-spacing: 2px;
        padding: 8px 10px;
        border-radius: 7px;
        text-transform: uppercase;
    }
    nav ul li a:hover { color: red; text-decoration: none; }
    nav ul li a:active { color: rgb(242, 63, 230); text-decoration: none; }
    #click { display: none; }
    .container{
        /*position: relative;*/
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px 100px;
    }
    .container:after{
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        background: url("map1.jpg") no-repeat center;
        background-size: cover;
        filter: blur(50px);
        z-index: -1;
    }
    .contact-box{
        margin: 20px auto;
        margin-bottom: 80px;
        max-width: 850px;
        max-height: 110vh;
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        justify-content: center;
        align-items: center;
        text-align: center;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 19px 5px rgba(0,0,0,0.19);
    }
    .left{
        background: url("map1.jpg") no-repeat center;
        background-size: cover;
        height: 100%;
        border-radius: 10px;
    }
    .right{ padding: 25px 40px; }
    h2{ position: relative; padding: 0 0 0px; }
    #contactus-line {
        margin-left: 50%;
        margin-right: 30%;
        margin-bottom: 10px;
        left: 50%;
        transform: translateX(-50%);
        height: 4px;
        width: 130px;
        border-radius: 2px;
        background-color: orange;
    }
    .field{
        width: 100%;
        border: 2px solid rgba(0, 0, 0, 0);
        outline: none;
        background-color: rgba(230, 230, 230, 0.6);
        padding: 0.5rem 1rem;
        font-size: 1.1rem;
        margin-bottom: 22px;
        transition: .3s;
    }

    .field:hover{ background-color: rgba(0, 0, 0, 0.1); }
    textarea{ min-height: 150px; }
    .formerror {
        color: red;
        font-size: small;
        font-style: italic;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }
    .btn{
        width: 100%;
        padding: 0.5rem 1rem;
        background-color: orange;
        color: #fff;
        font-size: 1.1rem;
        border: none;
        outline: none;
        cursor: pointer;
        transition: .3s;
    }
    .btn:hover{ background-color: green; }
    .field:focus{ border: 2px solid rgba(30,85,250,0.47); background-color: #fff; }
    footer { bottom: 0px; width: 100%; background: #111; }
    .main-content { display: flex; color: #fff; justify-content: space-between; }
    .main-content .box {
        flex-direction: column;
        flex-basis: 50%;
        padding: 10px 20px;
        text-align: center;
    }
    .box h2 {
        font-size: 20px;
        font-weight: 500;
        text-align:justify;
        text-transform: uppercase;
        text-align: center;
    }
    .box h2::after {
        content: '';
        display: block;
        width: 0;
        height: 1.8px;
        background-color: rgb(255, 94, 0);
        transition: width .3s;
    }
    .main-content .left2 h2:hover::after { width: 100%; }
    .main-content .center2 h2:hover::after { width: 100%; }
    .main-content .right2 h2:hover::after { width: 100%; }
    .box .content { margin: 20px 0 0 0; }
    .left2 h2 { padding-left: 20px; }
    .left2 .content .social { margin: 20px 0 0 0; justify-content: space-between; }
    .left2 .content .social a{ padding: 0 15px; }
    .left2 .content .social a i{
        height: 40px;
        width: 40px;
        background: #1a1a1a;
        color: #fff;
        line-height: 40px;
        text-align: center;
        font-size: 15px;
        border-radius: 9px;
        transition: 0.3s ease;
    }
    .left2 .content .social a i:hover { background:rgb(240, 79, 20) } 
    .center2 .content .place{ font-size: 13px;; padding-bottom: 12px; }
    .center2 .content .phone{ font-size: 13px;; padding-bottom: 12px; }
    .center2 .content .email{ font-size: 13px;; padding-bottom: 12px; }
    .center2 .content .place:hover { color: rgb(102, 247, 86); }
    .center2 .content .phone:hover { color: rgb(129, 166, 250); }
    .center2 .content .email:hover { color: rgb(240, 79, 20); }
    .right2 ul li:first-child { margin-top: 25px; }
    .right2 ul li { margin-top: 10px; font-size: 13px; list-style: none; }
    .right2 ul li a {
        color: #fff;
        letter-spacing: 1px;
        word-spacing: 2px;
        justify-content: space-between;
        text-decoration: none;
    }
    .right2 ul li a:hover { color: rgb(240, 79, 20);
    }
    .credit p{
        color: #dfe9f5;
        font-size: 60%;
        padding-left: 38%;
        padding-right: 38%;
        padding-bottom: 5px;
        justify-items: center;
        position: relative;
    }
    .credit span { color: gold; font-size: 110%; font-style: bold; }
    @media (max-width: 940px) {
        nav .menu-btn i { display: flex; }
        nav ul li a { color: #fff; }
        nav ul li a:hover { color: #f59b15; text-decoration: none; }
        nav ul li a:active { color: cyan; text-decoration: none; }
        nav ul {
            position: fixed;
            top:  100px;
            left: -100%;
            background: #111;
            height: 58vh;
            width: 100%;
            display: block;
            text-align: center;
            transition: all 0.35s ease-in;
        }
        #click { display: none; }
        #click:checked ~ ul { left: 0%; }
        #click:checked ~ .menu-btn i:before { content: "\f00d"; }
        nav ul li { margin: 40px 0px; }
        nav ul li a { font-size: 18px; display: block; text-decoration: none; }
        nav ul li a:hover { color: #f59b15; text-decoration: none; }
        nav ul li a:active { color: cyan; background: none; text-decoration: none; }
    }
    @media screen and (max-width: 880px){
        .contact-box{ grid-template-columns: 1fr; }
        .left{ height: 200px; }
    }
    @media only screen and (max-width: 495px) {
    	body { width: 150vw; }
		.header { width: 150vw; }
		.navbar { width: 150vw; }
		footer { width: 150vw; }
    }
</style>
<body>
    <header class="header">
        <nav class="navbar">
            <img src="sclogo.png" alt="Logo" class="logo">
            <input type="checkbox" id="click">
            <label for="click" class="menu-btn">
                <i class="fas fa-bars" aria-hidden="true"></i>
            </label>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about_us.jsp">About us</a></li>
                <li><a href="" id="active">Contact us</a></li>
                <li><a href="Sharmaclasses.jsp">Sign in/Sign up</a></li>
            </ul>
        </nav>
    </header>
	<div class="container">
		<div class="contact-box">
			<div class="left"></div>
			<div class="right">
				<h2>Contact Us</h2><hr id="contactus-line">
				<form action="ConSer" name="ConForm" autocomplete="on" method="post">
                    <div class="myname">
                    	<label for="name"></label>
                        <input type="text" id="name" name="name" class="field" placeholder="Your Full Name" required><br>
                        <b><span class="formerror"></span></b>
                    </div>
                    <div class="email">
                    	<label for="eid"></label>
                        <input type="text" id="eid" name="eid" class="field" placeholder="Your Email ID" required><br>
                        <b><span class="formerror"></span></b>
                    </div>
                    <div class="mobile">
                    	<label for="mob"></label>
                        <input type="text" id="mob" name="mob" class="field" placeholder="Mobile No" required><br>
                        <b><span class="formerror"></span></b>
                    </div>
                    <textarea placeholder="Message" class="field" name="msg" id="msg" required></textarea>
                    <input class="btn" type="submit" value="Send">
				</form>
			</div>
		</div>
	</div>
	<footer>
        <div class="main-content">
            <div class="left2 box">
                <h2> Follow us </h2>
                <div class="content">
                    <div class="social">
                        <a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                        <a href="https://www.instagram.com/invites/contact/?i=uap51fnabp3o&utm_content=hlw25uf"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                        <a href="https://www.linkedin.com/in/shreya-barnwal-15022a214"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <div class="center2 box">
                <h2> Contact</h2>
                <div class="content">
                    <div class="place">
                        <i class="fas fa-map-marked-alt"></i>
                        <span class="text">Howrah, West Bengal</span>
                    </div>
                    <div class="phone">
                        <i class="fa fa-phone-volume" aria-hidden="true"></i>
                        <span class="text">+91-8017876156</span>
                    </div>
                    <div class="email">
                        <i class="fas fa-envelope"></i>
                        <span class="text">shreyabarnwal292@gmail.com</span>
                    </div>
                </div>
            </div>
            <div class="right2 box">
                <h2> Menu </h2>
                <div class="content">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about_us.jsp">About us</a></li>
                        <li><a href="#Contact.jsp">Contact us</a></li>
                        <li><a href="Sharmaclasses.jsp">Sign in/Sign up</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="credit">
            <p> Created by <span>Shreya Barnwal</span> & <span>Guddu Sharma</span> | <i class="fa fa-copyright" aria-hidden="true"></i> 2023 All rights reserved </p>
        </div>
    </footer>
</body>  
</html>