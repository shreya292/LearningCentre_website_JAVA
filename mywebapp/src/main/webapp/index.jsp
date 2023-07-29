<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/swiper@9.0.5/swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <title> Welcome to the Home Page </title>
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
        background: radial-gradient(#00bfe0, #006d8f); 
        background-size: cover;
        background-repeat: repeat;
        background-attachment: fixed;
    }
    nav {
        height: 100px;
        width: 100vw;
        background: linear-gradient(to right, #f67867, #f8f0c2);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0px 50px 0px 100px;
    }
    nav .logo { height: 70px; width: 210px; min-height: 70px; min-width: 255px; }
    nav li { list-style: none; }
    #active { color: white; background: black; }
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
        body { width: fit-content; }
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
        footer{ width: 120vw; }
    }
    .knowledge-section {
        width: 100%;
        height: 100%;
        margin-top: 5px;
        padding-bottom: 18px;
        background: radial-gradient(#00bfe0, #006d8f); 
        justify-content: center;
    }
    .knowledge-section h2 { margin-top: 10px; padding-left: 10px; align-items: center }
    .knowledge-line {
        width: 75%;
        border: 2px solid gold;
        border-radius: 2px;
        margin-left: auto;
        margin-right: auto;
    }
    .main-skills {
        align-items: center;
        margin-top: 20px;
        display: flex;
        flex-wrap: wrap;
        padding-left: 20px;
        justify-content: center;
    }
    .main-skills .card-link {
        width: 170px;
        height: 180px;
        margin: 10px;
        background: #ffe;
        text-align: center;
        border-radius: 20px;
        padding: 10px;
        box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.1);
    }
    .main-skills .card-link h3 { margin: 10px; text-transform: capitalize; }
    .main-skills .card-link p { font-size: 12px; padding-bottom: 20px; }
    .main-skills .card-link a {
        font-size: 13px;
        background: rgb(240, 13, 13);
        color: #ffe;
        padding: 7px 15px;
        border-radius: 8px;
        margin-top: 40px;
        cursor: pointer;
    }
    .main-skills .card-link a:hover { background: rgb(3, 187, 187); }
    .main-skills .card-link i { font-size: 22px; padding: 10px; }
    #maths_icon { height: 48px; width: 48px; }
    .faculty-section {
        height: 472px;
        width: 100%;
        align-items: center;
        background: radial-gradient(#00bfe0, #006d8f); 
        margin-top: 0.5px;
        padding-left: 15%;
        padding-right: 15%;
    }
    .about-faculty {
        margin-top: -10px;
        position: relative;
        height: 86%;
        width: 98%;
        min-width:320px;
        display: flex;
        align-items: center;
        background: radial-gradient(rgb(153, 250, 177), rgb(233, 250, 83));
    }
    h2.align-center {
        position: relative;
        width: 95%;
        margin-top: 1.5px;
        font-size: 25px;
        text-transform: uppercase;
        font-weight: bold;
        text-align:  center;
    }
    hr.facline { width: 98%; border: 2px solid gold; border-radius: 2px; }
    main { height: 100%; }
    section { height: 55vh; display: inline-block; background: #f2f2f2; }
    section .card .image {
        height: 165px;
        width: 165px;
        border-radius: 25%;
        padding: 3px;
        background: rgb(240, 79, 20);
    }
    section .card .image img{
        height: 101%;
        width: 101%;
        object-fit: cover;
        border-radius: 25%;
        border: 3px solid #fff;
    }
    .card {
        position: relative;
        border-radius: 30px;
        background: #fff;
        margin: 5px 0;
        box-shadow: 2px 2px 2px 2px gold;
    }
    .card::before {
        content: "";
        position: absolute;
        height: 40%;
        width: 100%;
        background:rgb(240, 79, 20);
        border-radius: 20px 20px 0 0;
    }
    .card .card-content {
        padding: 20px;
        display: flex;
        align-items: center;
        flex-direction: column;
        position: relative;
        z-index: 100
    }
    .card .media-icons {
        position: absolute;
        top: 10px;
        right: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .card .media-icons i {
        margin-top: 10px;
        color: #fff;
        opacity: 0.8;
        transition: all 0.3s ease;
        cursor: pointer;
    }
    .card .media-icons i:hover { opacity: 1; }
    .card .name-profession {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 10px;
        color: rgb(19, 1, 1)
    }
    .name-profession .name { font-size: 20px; font-weight: 800; }
    .name-profession .degree, .profession, .experience { font-size: 15px; font-weight: 600; }
    .card .rating {
        size-adjust: inherit;
        font-size: 15px;
        margin: 0 2px;
        color:rgb(240, 79, 20);
    }
    .swiper { width: 900px; }
    .swiper .swiper-pagination { margin-top: 20px; position: absolute; }
    .swiper .swiper-pagination-bullet { height: 7px; width: 26px; border-radius: 25px; background:rgb(240, 79, 20); }
    .swiper-button-next, .swiper-button-prev { opacity: 0.8; color:rgb(240, 79, 20); transition: all 0.3s ease; }
    .swiper-button-next:hover, .swiper-button-prev:hover { opacity: 1; background:rgb(219, 206, 202); }
    .swiper { width: 300px; height: 320px; padding: 5px; }
    .swiper-slide { background-position: center; background-size: cover; width: 300px; height: 320px; }
    footer { margin-top: 12px; bottom: 0px; width: 100vw; background: #111; }
    .main-content { display: flex; color: #fff; justify-content: space-between; }
    .main-content .box { flex-direction: column; flex-basis: 50%; padding: 10px 20px; text-align: center; }
    .box h2 {
        font-size: 15px;
        font-weight: 700;
        letter-spacing: 0.5px;
        text-transform: uppercase;
        text-align: center;
    }
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
    .center .content .place{ font-size: 13px; padding-bottom: 12px; }
    .center .content .phone{ font-size: 13px; padding-bottom: 12px; }
    .center .content .email{ font-size: 13px; padding-bottom: 12px; }
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
    .credit span { color: gold; font-size: 110%; font-style: bold; }
    .in-center { text-align: center; }
    hr.faceline { border: 2px solid rgb(10, 190, 7); }
    @media only screen and (max-width: 470px) {
        body { width: 150vw; }
        .header { width: 150vw; }
        .navbar { width: 150vw; }
        footer { width: 150vw; }
    }
    @media only screen and (min-width: 470px) and (max-width: 600px) {
        body { width: 130vw; }
        .navbar { width: 130vw; }
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
                <li><a href="#active" id="active">Home</a></li>
                <li><a href="about_us.jsp">About us</a></li>
                <li><a href="Contact.jsp">Contact us</a></li>
                <li><a href="Sharmaclasses.jsp">Sign in/Sign up</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="knowledge-section">
            <h2 class="align-center"> KNOWLEDGE SECTION </h2>
            <hr class="knowledge-line">
            <div class="main-skills">
                <div class="card-link">
                    <img src="htmlicon.png" alt="HTML5">
                    <h3> HTML </h3>
                    <p> Skeleton of Web pages </p>
                    <a href="https://www.w3schools.com/html/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="css_icon.png" alt="CSS3">
                    <h3> CSS </h3>
                    <p> Designing Web pages </p>
                    <a href="https://www.w3schools.com/css/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="js_icon.png" alt="Java_Script">
                    <h3> JAVASCRIPT </h3>
                    <p>Interactive Web pages </p>
                    <a href="https://www.w3schools.com/js/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="c_icon.png" alt="C Programming">
                    <h3> <b>C</b> </h3>
                    <p> Let's C</p>
                    <a href="https://www.w3schools.com/c/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="c++_icon.png" alt="C++">
                    <h3> C++ </h3>
                    <p>  C with '++' vision </p>
                    <a href="https://www.w3schools.com/cpp/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="java_icon.png" alt="Java">
                    <h3> JAVA </h3>
                    <p> Have a cup of Java </p>
                    <a href="https://www.w3schools.com/java/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="python_icon.png" alt="Python">
                    <h3> Python </h3>
                    <p> Beware of Python</p>
                    <a href="https://www.w3schools.com/python/" target="_blank"> Know more </a>
                </div>
                <div class="card-link">
                    <img src="maths_icon.png" id="maths_icon" alt="Mathematics">
                    <h3> MATHEMATICS </h3>
                    <p> Don't be mad. Let's Add. </p>
                    <a href="https://www.tutorialspoint.com/maths_tutorials.htm" target="_blank"> Know more </a>
                </div>
            </div>
        </section>
        <section class="faculty-section">
            <h2 class="align-center"> OUR FACULTY MEMBERS </h2><hr class="facline">
            <br>
            <div class="about-faculty">
                <div class="swiper mySwiper container">
                    <div class="swiper-wrapper content">
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="selfie.jpeg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="https://www.facebook.com/gsharmaaa7" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="https://www.linkedin.com/in/guddu-sharma-850783203" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="https://instagram.com/_.sharmaag7._?igshid=ZDdkNTZiNTM=" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> GUDDU SHARMA </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE</i></span>
                                    <span class="profession"> Teaching : <i>Maths</i> </span>
                                    <span class="experience"> Experience : <i>5 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="Shreya2.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="https://www.facebook.com/shreya.barnwal.9693" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="https://www.linkedin.com/in/shreya-barnwal-15022a214" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="https://instagram.com/shreya_barnwal.15?igshid=YmMyMTA2M2Y=" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> SHREYA BARNWAL </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE, MBA</i></span>
                                    <span class="profession"> Teaching : <i>Python</i> </span>
                                    <span class="experience"> Experience : <i>5 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="profile.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> SHALU SHARMA </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE</i></span>
                                    <span class="profession"> Teaching : <i>HTML5</i> </span>
                                    <span class="experience"> Experience : <i>5 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                   <img src="profile.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> ABHISHEK SHARMA </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE</i></span>
                                    <span class="profession"> Teaching : <i>Java</i> </span>
                                    <span class="experience"> Experience : <i>7 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="profile.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> DAYA MEHER </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE</i></span>
                                    <span class="profession"> Teaching : <i>C</i> </span>
                                    <span class="experience"> Experience : <i>3 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="profile.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> VIJAY CHOPRA </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE</i></span>
                                    <span class="profession"> Teaching : <i>C++</i> </span>
                                    <span class="experience"> Experience : <i>6 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                   <img src="profile.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> SAKSHI KAPUR </span><br>
                                    <span class="degree"> Degree : <i>B.Tech CSE</i></span>
                                    <span class="profession"> Teaching : <i>CSS3</i> </span>
                                    <span class="experience"> Experience : <i>5 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="profile.jpg" alt="">
                                </div>
                                <div class="media-icons">
                                    <a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="name-profession">
                                    <span class="name"> RIPAN DEY </span><br>
                                    <span class="degree"> Degree: <i>Master's in Botany</i></span>
                                    <span class="profession"> Teaching: <i>Javascript</i> </span>
                                    <span class="experience"> Experience: <i>2 years</i> </span>   
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
            </div>
        </section>
    </main>
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
                        <li><a href="#">Home</a></li>
                        <li><a href="about_us.jsp">About us</a></li>
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
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
        effect: "flip",
        grabCursor: true,
        pagination: {
            el: ".swiper-pagination",
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        });
    </script>
</html>
