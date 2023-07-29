<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in / Sign up Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
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
        background: linear-gradient(45deg, #bcffc7, #23494a);
        height: 100%;
    }
    nav {
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
        text-transform: uppercase;
        font-size: 17px;
        font-weight: 500;
        letter-spacing: 1px;
        word-spacing: 2px;
        padding: 8px 10px;
        border-radius: 7px;
    }
    nav ul li a:hover { color: red; text-decoration: none; }
    nav ul li a:active { color: rgb(242, 63, 230); text-decoration: none; }
    #click { display: none; }
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
    section { width: 100%; height: 100%;}
    .mid-content { display: flex; flex-wrap: wrap; justify-content: center; }
    .left-article {
        margin: 30px 40px 30px 30px;
        padding: 30px 30px 30px 30px;
        width: 430px;
        height: 420px;
        border-radius: 10px;
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
    }
    .left-article h1 {
        font-size: 32px;
        font-weight: 650;
        text-align: center;
        color: #ff7200;
    }
    .left-article .offer-course { color:#fff; font-size: 16.5px; font-weight: 500; letter-spacing: 0.5px; }
    .left-article ol {
        list-style: inside upper-roman;
        font-size: 13px;
        color: #fcfafa;
        padding: 6px 10px 10px 5px;
        letter-spacing: 1px;
    }
    .left-article li  img { width: 15.5px; height: 15.5px; }
    .left-article .par {
        padding: 10px 10px 0px 5px;
        font-size: 16px;
        color: #fff;
    }
    .left-article .bttn { margin-bottom: 8px; }
    .form{
        text-align: center;
        width: 360px;
        height: 410px;
        box-shadow: 2px 2px 2px 2px rgb(250, 179, 153);
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
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
        font-family: 'Courier New', Courier, monospace;
        font-weight: 600;
    }
    .form input:focus{ outline: none; }
    .form input::placeholder{ color: #fff; font-family: 'Montserrat', sans-serif; }
    .bttn{
        text-align: center;
        width: 200px;
        height: 40px;
        background: #ff7200;
        margin-top: 30px;
        font-size: 18px;
        border-radius: 10px;
        cursor: pointer;
        color: #000;
        font-weight: bold;
        transition: 0.4s ease;
        letter-spacing: 1.5px;
    }
    .bttn:hover{ background: green; color: #fff; }
    .bttn a{ text-decoration: none; color: #000; font-weight: bold; }
    .form .link{
        font-family: Arial, Helvetica, sans-serif;
        font-size: 17px;
        padding-top: 20px;
        text-align: center;
        color: #fff;
    }
    .form .link a{ font-size: 16px; text-decoration: none; color: #ff7200; }
    footer { bottom: 0px; width: 100%; background: #111; }
    .main-content { display: flex; color: #fff; justify-content: space-between; }
    .main-content .box { flex-direction: column; flex-basis: 50%; padding: 10px 20px; }
    .box h2 {
        font-size: 15px;
        font-weight: 700;
        letter-spacing: 0.5px;
        text-transform: uppercase;
        text-align: center;
    }
    .box .content { margin: 20px 0 0 0; text-align: center; }
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
    .left .content .social a i:hover { background:rgb(240, 79, 20); }
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
    .right ul li:first-child { margin-top: 25px; }
    .right ul li { margin-top: 10px; font-size: 13px; }
    .right ul li a {
        color: #fff;
        letter-spacing: 1px;
        word-spacing: 2px;
        justify-content: space-between;
    }
    .right ul li a:hover { color: rgb(240, 79, 20); }
    .credit p{
        color: #dfe9f5;
        font-size: 60%;
        padding-left: 38%;
        padding-right: 38%;
        justify-items: center;
        position: relative;
    }
    .credit span { color: gold; font-size: 110%; font-style: bold; }
    #eye-icon{
		font-size: 14px;
		margin-left: -30px;
		color: #fff;
	}
	#active { color: white; background: black; }
	@media only screen and (max-width: 470px) {
		body { 
			width: 130vw;  
			background-size: auto; 
			background-repeat: repeat;
			background-attachment: fixed;
		}
		.header { width: 130vw; }
		.left-article { height: max-content; margin-left: 10%; }
		footer { width: 130vw; }
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
                <li><a href="Contact.jsp">Contact us</a></li>
                <li><a href="" id="active">Sign in / Sign up</a></li>
            </ul>
        </nav>
    </header>
    <section>
            <div class="mid-content">
                <div class="left-article aside">
                    <h1>SHARMA CLASSES</h1><br>
                    <p class="offer-course"> We offer these subjects to learn from us: <br>
                        <ol>
                            <li><img src="htmlicon.png" alt="HTML"><span> HTML</span></li>
                            <li><img src="css_icon.png" alt="CSS"><span> CSS3</span></li>
                            <li><img src="js_icon.png" alt="JavaScript"><span> JavaScript</span></li>
                            <li><img src="c_icon.png" alt="CSS"><span> C Programming</span></li>
                            <li><img src="c++_icon.png" alt="CSS"><span> C++</span></li>
                            <li><img src="java_icon.png" alt="CSS"><span> Java</span></li>
                            <li><img src="python_icon.png" alt="CSS"><span> Python</span></li>
                            <li><img src="maths_icon.png" alt="CSS"><span> Mathematics</span></li>
                        </ol>
                    </p>
                    <p class="par">
                        <strong>Are you here to learn something?</strong><br>
                        Let us help you to Learn, and Succeed.
                    </p>
                    <button class="bttn"><a href="Join.jsp">JOIN US</a></button>
                </div>
                <form action="LogSer1" name="LogForm" method="post">
                	<div class="form aside">
                    	<h2>Login using your credentials</h2>
                    	<input type="email" name="eid" placeholder="Enter registered Email Id " required>
                   		<input type="password" id="pwd" name="pwd" placeholder="Enter Password " required>
                    	<i class="fa-sharp fa-solid fa-eye-slash" id="eye-icon" onclick="showPassword(this)"></i>
                    	<button class="bttn">LOG IN</button>
                    	<!-- <p class="link"><a href="forget_pwd.jsp">Forgot  your Password?</a></p> -->
                    	<p class="link">Don't have an account ?<a href="Join.jsp"> SIGN UP </a> </p>
                	</div>
                </form>
            </div>
        
    </section>
   <footer>
        <div class="main-content">
            <div class="left box">
                <h2> Follow us </h2>
                <div class="content">
                    <div class="social">
                        <a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                        <a href="https://www.instagram.com/invites/contact/?i=uap51fnabp3o&utm_content=hlw25uf"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                        <a href="https://www.linkedin.com/in/shreya-barnwal-15022a214"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <div class="center box">
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
            <div class="right box">
                <h2> Menu </h2>
                <div class="content">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about_us.jsp">About us</a></li>
                        <li><a href="Contact.jsp">Contact us</a></li>
                        <li><a href="">Sign in/Sign up</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="credit">
            <p> Created by <span>Shreya Barnwal</span> & <span>Guddu Sharma</span> | <i class="fa fa-copyright" aria-hidden="true"></i> 2023 All rights reserved </p>
        </div>
    </footer>
</form>    
</body>
<script>
function showPassword(chic) {
    var passwrd = document.getElementById("pwd");
    if (passwrd.type == "password") {
        passwrd.type = "text";
    } else {
        passwrd.type = "password";
    }
    chic.classList.toggle("fa-eye");
}
</script>
</html>