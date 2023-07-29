<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!--<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhlPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>About Us</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;1,300&display=swap');
    * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        outline: none;
        border: none;
        text-decoration: none;
        font-family: 'Montserrat', sans-serif;
    }
    body { background-color: rgb(183, 183, 183); }
    nav {
        height: 100px;
        background: linear-gradient(to right, #f67867, #f8f0c2);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0px 50px 0px 100px;
    }
    nav .logo { height: 70px; width: 210px; min-height: 70px; min-width: 255px; }
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
    @media (max-width: 990px) {
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
        nav ul li {  margin: 40px 0px; }
        nav ul li a { font-size: 18px; display: block; text-decoration: none; }
        nav ul li a:hover { color: #f59b15; text-decoration: none; }
        nav ul li a:active { color: cyan; background: none; text-decoration: none; }
    }
    .section {
        width: 100%;
        min-height: 100vh;
        /*background: radial-gradient(#ff4066, #fff16a);*/
        background-color:rgb(183, 183, 183) ;
        display: flex;
        flex-wrap: wrap;
        padding-bottom: 5%;
    }
    .container {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        margin: auto;
        padding-top: 100px;
        justify-content: center;
    }
    .content-section {
        float: left;
        width: 450px;
        height: 68vh;
        margin: 5px 10px 10px 20px;
        padding-left: 10px;
        padding-right: 10px;
        background-color: #fff;
        border-radius: 15px;
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
    }
    .content-section .title { text-transform: uppercase; font-size: 30px; }
    .content-section .title::after {
        content: '';
        display: block;
        width: 0;
        height: 1.8px;
        background-color: #d18800;
        transition: width .3s; }
    .content-section .title:hover::after { width: 200px; }
    .content-section .content1 h3{ margin-top: 25px; font-size: 170%; color: rgb(47, 72, 173); }
    .content-section .content1 h3::after {
        content: '';
        display: block;
        width: 0;
        height: 1.8px;
        background-color: blue;
        transition: width .3s;
    }
    .content-section .content1 h3:hover::after { width: 190px; }
    .content-section .content1 p {
        background-color: rgb(244, 78, 41);
        margin-top: 15px;
        padding-left: 7px;
        padding-right: 7px;
        padding-top: 4px;
        padding-bottom: 4px;
        font-size: 16px;
        word-spacing: 1px;
        line-height: 1.3;
        border-radius: 4px;
    }
    .content-section .content1 ul {
        padding-top: 10px;
        padding-right: 10px;
        padding-bottom: 10px;
        padding-left: 30px;
        background-color: rgb(159, 238, 138);
        border-radius: 8px;
    }
    
    .content-section .social-media img {
        padding-top: 3px;
        padding-bottom: 7px;
        padding-right: 2px;
        padding-left: 3px;
        width: 80px;
        height: 80px;
    }
    #fbicon, #instaicon { transition: transform 0.3s ease; }
    #linkedin { height: 65px; width: 60px; transition: transform 0.3s ease; }
    #fbicon:hover, #instaicon:hover, #linkedin:hover { transform: scale(1.25); }
    .image-section {
        display: inline-block;
        width: 420px;
        height: 100%;
        margin: 5px 5px 5px 20px;
        border-radius: 15px;
        background-color: aliceblue;
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
    }
    .image-section img {
        display: block;
        margin: 30px auto 10px auto;
        width: 60%;
        height: 65%;
        padding: 10px 10px;
        max-height: 240px;
        min-height: 80px;
        border-radius: 25px;
    }
    #gudsh, #shreya { trnasition: transform 0.3s ease; }
    #gudsh:hover, #shreya:hover { transform: scale(1.02); box-shadow: 0 0 8px 2px gold; }
    #gudsh {
        width: 55%;
        height: 53%;
        max-height: 300px;
        min-height: 100px;
        border-radius: 25px;
    }
    footer { bottom: 0px; width: 100%; background: #111; }
    .main-content { display: flex; color: #fff; justify-content: space-between; text-align: center; }
    .main-content .box { flex-basis: 50%; padding: 10px 20px; }
    .box h2 { font-size: 20px; font-weight: 500; text-transform: uppercase; }
    .box .content { margin: 20px 0 0 0; }
    .left h2 { padding-left: 17px; }
    .main-content .left h2::after {
        content: '';
        display: block;
        width: 0;
        height: 1.8px;
        background-color: rgb(255, 94, 0);
        transition: width .3s;
    }
    .main-content .left h2:hover::after { width: 100%; }
    .left .content .social { margin: 20px 0 0 0; justify-content: space-between; }
    .left .content .social a{ padding: 0 15px; }
    .left .content .social a i{
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
    .left .content .social a i:hover { background:rgb(240, 79, 20) }
    .main-content .center h2::after {
        content: '';
        display: block;
        width: 0;
        height: 1.8px;
        background-color: rgb(255, 94, 0);
        transition: width .3s; 
    }
    .main-content .center h2:hover::after { width: 100%; }
    .center .content .place{ font-size: 13px;; padding-bottom: 12px; }
    .center .content .phone{ font-size: 13px;; padding-bottom: 12px; }
    .center .content .email{ font-size: 13px;; padding-bottom: 12px; }
    .center .content .place:hover { color: rgb(102, 247, 86); }
    .center .content .phone:hover { color: rgb(129, 166, 250); }
    .center .content .email:hover { color: rgb(240, 79, 20); }
    .main-content .right h2::after {
        content: '';
        display: block;
        width: 0;
        height: 1.8px;
        background-color: rgb(255, 94, 0);
        transition: width .3s;
    }
    .main-content .right h2:hover::after { width: 100%; }
    .right ul{ list-style: none; }
    .right ul li:first-child { margin-top: 25p }
    .right ul li { margin-top: 10px; font-size: 13px; }
    .right ul li a { color: #fff; letter-spacing: 1px; word-spacing: 2px; justify-content: space-between; }
    .right ul li a:hover { color: rgb(240, 79, 20); }
    .credit p{
        color: #dfe9f5;
        font-size: 60%;
        padding-left: 38%;
        padding-right: 38%;
        justify-items: center;
        position: relative;
    }
	@media only screen and (max-width: 495px) {
		body { width: 130vw; }
		.navbar { width: 130vw; }
		footer { width: 130vw; }
	}
	@media only screen and (max-width: 380px) {
		body { width: 150vw; }
		.navbar { width: 150vw; }
		footer { width: 150vw; }
	}
	#active { color: white; background: black; }
	.credit span { color: gold; font-size: 110%; font-style: bold; }
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
                <li><a href="" id="active">About us</a></li>
                <li><a href="Contact.jsp">Contact us</a></li>
                <li><a href="Sharmaclasses.jsp">Sign in/Sign up</a></li>
            </ul>
        </nav>
    </header>
    <div class="section">
        <div class="container">
            <div class="content-section">
                <div class="title">
                    <h1> About Us </h1>
                </div>
                <div class="content1">
                    <h3>Sharma Classes</h3>
                    <p> 
                        <ul>
                            <li> <b>Sharma Classes</b> was founded by <i><b>Shreya Barnwal, Guddu Sharma</i></b> in 2020.<br> </li>
                            <li> <b>Sharma Classes</b> is located in Howrah, West Bengal.<br> </li>
                            <li> We have been redefining the education system by providing the education to all students at affordable fees.<br></li>
                            <li> <b>Sharma Classes</b>'s motto has always been <b>"Education for all"</b>. </li>

                        </ul>
                    </p>
                </div>
                <div class="social-media">
                    <a href="https://www.facebook.com/gsharmaaa7"><img src="fbicon100.png" id="fbicon" alt="Facebook"></a>
                    <a href="https://instagram.com/shreya_barnwal.15?igshid=YmMyMTA2M2Y="><img src="instagram-100.png" id="instaicon" alt="Instagram"></a>
                    <a href="https://www.linkedin.com/in/shreya-barnwal-15022a214"><img src="linkedinicon.png" id="linkedin"  alt="Linkedin"></a>
                </div>
            </div>
            <div class="image-section">
                <img src="Shreya2.jpg" id="shreya" alt="Shreya Barnwal">
                <img src="selfie.jpeg" id="gudsh" alt="Guddu Sharma">
            </div>
        </div>
    </div>
    <footer>
        <div class="main-content">
            <div class="left box">
                <h2> Follow us </h2>
                <div class="content">
                    <div class="social">
                        <a href="https://www.facebook.com/gsharmaaa7"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                        <a href="https://www.instagram.com/invites/contact/?i=uap51fnabp3o&utm_content=hlw25uf"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                        <a href="https://www.linkedin.com/in/shreya-barnwal-15022a214"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <div class="center box">
                <h2> Contact </h2>
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
            <div class="right box">
                <h2> Menu </h2>
                <div class="content">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="#about_us.jsp">About us</a></li>
                        <li><a href="Contact.jsp">Contact us</a></li>
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