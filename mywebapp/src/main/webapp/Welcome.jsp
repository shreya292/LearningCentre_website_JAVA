<%@ page import = "beans.Student" %>
<%@page import="dao.DAO_STUDENT" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title> Welcome </title>
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
    	background: linear-gradient(45deg, #771d32, #e65758); 
    	background-repeat: repeat;
    	background-size: contain;
        background-attachment: fixed;
    }
    .sidebar{
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 300px;
        background: #11101d;
        z-index: 100;
        transition: all 0.5s ease;
    }
    .sidebar.close{ width: 78px; }
    .sidebar .logo-details{
        height: 60px;
        width: 100%;
        display: flex;
        align-items: center;
    }
    .sidebar .logo-details i{
        font-size: 30px;
        color: #fff;
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
    }
    .sidebar .logo-details .logo_name{
        font-size: 22px;
        color: #fff;
        font-weight: 600;
        transition: 0.3s ease;
        margin-top:10px;
        transition-delay: 0.1s;
    }
    .sidebar.close .logo-details .logo_name{
        transition-delay: 0s;
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .logo-details i {
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
    }
    .sidebar .logo-details i img { height: 60px; width: 60px; }
    .sidebar .logo-details .logo_name {
        font-size: 20px;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        color: #fff;
        font-weight: 550;
    }
    .sidebar .nav-links{ height: 100%; padding: 30px 0 150px 0; overflow: auto; }
    .sidebar.close .nav-links{ overflow: visible; }
    .sidebar .nav-links::-webkit-scrollbar{ display: none; }
    .sidebar .nav-links li{ position: relative; list-style: none; transition: all 0.4s ease; margin-bottom:20px; }
    .sidebar .nav-links li:first-child { margin-top: 30px; }
    .sidebar .nav-links li:hover{ background: #1d1b31; }
    .sidebar .nav-links li .icon-link{
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .bx-log-out span a { display: none; }
    .sidebar.close .nav-links li .icon-link{ display: block }
    .sidebar .nav-links li i{
        height: 50px;
        min-width: 78px;
        text-align: center;
        line-height: 50px;
        color: #fff;
        font-size: 20px;
        cursor: pointer;
        transition: all 0.3s ease;
    }
    .sidebar .nav-links li.showMenu i.arrow{ transform: rotate(-180deg); }
    .sidebar.close .nav-links i.arrow{ display: none; }
    .sidebar .nav-links li a{ display: flex; align-items: center; text-decoration: none; }
    .sidebar .nav-links li a .link_name{
        font-size: 18px;
        font-weight: 400;
        color: #fff;
        transition: all 0.4s ease;
    }
    .sidebar.close .nav-links li a .link_name{ opacity: 0; pointer-events: none; }
    .sidebar .nav-links li .sub-menu{
        padding: 6px 6px 14px 80px;
        margin-top: -10px;
        background: #1d1b31;
        display: none;
    }
    .sidebar .nav-links li.showMenu .sub-menu{ display: block; }
    .sidebar .nav-links li .sub-menu a{
        color: #fff;
        font-size: 15px;
        padding: 5px 0;
        white-space: nowrap;
        opacity: 0.6;
        transition: all 0.3s ease;
    }
    .sidebar .nav-links li .sub-menu a:hover{ opacity: 1; }
    .sidebar.close .nav-links li .sub-menu{
        position: absolute;
        left: 100%;
        top: -10px;
        margin-top: 0;
        padding: 10px 20px;
        border-radius: 0 6px 6px 0;
        opacity: 0;
        display: block;
        pointer-events: none;
        transition: 0s;
    }
    .sidebar.close .nav-links li:hover .sub-menu{
        top: 0;
        opacity: 1;
        pointer-events: auto;
        transition: all 0.4s ease;
    }
    .sidebar .nav-links li .sub-menu .link_name{ display: none; }
    .sidebar.close .nav-links li .sub-menu .link_name{
        font-size: 18px;
        opacity: 1;
        display: block;
    }
    .sidebar .nav-links li .sub-menu.blank{
        opacity: 1;
        pointer-events: auto;
        padding: 3px 20px 6px 16px;
        opacity: 0;
        pointer-events: none;
    }
    .sidebar .nav-links li:hover .sub-menu.blank{ top: 50%; transform: translateY(-50%); }
    .sidebar .profile-details{
        position: fixed;
        bottom: 0;
        width: 300px;
        display: flex;
        justify-content: space-between;
        background: #1d1b31;
        padding: 12px 0;
        transition: all 0.5s ease;
    }
    .sidebar.close .profile-details{ background: none; width: 78px; }
    .sidebar .profile-details .profile_name,
    .sidebar .profile-details .job{
    	margin-left: 20px;
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        white-space: nowrap;
    }
    .sidebar .profile-details .job{ font-size: 12px; }
    .sidebar.close .profile-details .profile_name,
    .sidebar.close .profile-details .job{ display: none; }
    .upper-part{
        position: relative;
        background: #11101D;
        color: #fff;
        height: 100%;
        left: 300px;
        width: calc(100% - 300px);
        min-width: 100%;
        transition: all 0.5s ease;
    }
    .sidebar.close ~ .upper-part{ left: 78px; width: calc(100% - 78px); }
    .upper-part .upper-content{ height: 60px; display: flex; align-items: center; }
    .upper-part .upper-content .bx-menu {
        color: #fff;
        font-size: 35px;
        margin: 0 15px;
        cursor: pointer;
    }
    .upper-part .upper-content .bxs-user-pin{ font-size: 25px; padding-left: 45px; }
    .upper-part .upper-content .bxs-megaphone { padding-left: 10px; font-size: 25px; }
    .upper-part .upper-content .text { font-size: 16px; font-weight: 600; color: #fff; margin-left:8px; }
    
    .con-part{
        position: relative;
        background: linear-gradient(270deg, #771d32, #e65758);
        background-attachment: fixed;
        background-repeat: repeat;
    	background-size: cover;
        height: 100%;
        left: 300px;
        width: calc(100% - 300px);
        min-width: 100%;
        transition: all 0.5s ease;
    }
    .sidebar.close ~ .con-part{ left: 78px; width: calc(100% - 78px); }
    .con-part .con-content{ height: 100%; display: flex; }
    .con-part .con-content .bx-menu { color: #11101d; font-size: 35px; }
    .con-part .con-content .bx-menu{ margin: 0 15px; cursor: pointer; }
    .con-part .con-content .text{ font-size: 26px; font-weight: 600; }
    .text { margin-right: 15px; }
    @media only screen and (max-width: 450px;) {
    	.con-part { height: 150vh; }
    }
    .routine-card {
        background: #fff;
        margin: 25px 15px 15px 5%;
        padding: 15px 15px 15px 15px;
        border-radius: 5px;
        /*text-transform: uppercase;*/
        box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.1);
    }
    .routine-card h1 { 
    	text-align: center; 
    	text-transform: uppercase; 
    	padding-bottom: 5px; 
    	font-weight: 600; 
    	color: #1205a1; 
    }
    table {margin: 15px; border-collapse: collapse; width: 50vw; }
    th { background-color: #03915d; color: rgb(248, 235, 235); border-radius: 2px; }
    th, td { text-align: left; padding: 5px; }
    tr:hover {background-color: coral;}
    tr { background-color: antiquewhite;}
    tr:nth-child(even) {background-color: #dac17e;}
    @media (max-width: 300px) {
        .sidebar.close .nav-links li .sub-menu{ display: none; }
        .sidebar{ width: 78px; }
        .sidebar.close{ width: 0; }
        .upper-part{ left: 78px; width: calc(100% - 78px); z-index: 100; }
        .sidebar.close ~ .upper-part{ width: 100%; left: 0; }
    }
    @media only screen and (max-width: 430px) {
        .upper-part { min-width: 508px }
        .con-part { min-width: 508px; min-height: 1100px; }
    }
    .notes-content {
        margin: 10px 20px 15px 5%;
        padding: 5px 5px 5px 10px;
        background: #fff;
        width: 500px;
        border-radius: 10px;
        box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.1);
    }
    .notes-content h2 { text-align: center; color: #1205a1;}
    .notes-content .notes-wrapper {
        margin: 5px 4px 4px 4px;
        padding: 3px 3px 3px 3px;
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
    }
    .notes-content .notes-wrapper .notes-card {
        margin: 6px 4px 5px 4px;
        padding: 20px 8px 8px 8px;
        text-align: center;
        width: 100px;
        height: 100px;
        border-radius: 10px;
        box-shadow: 1px 1px 1px 1px rgb(250, 179, 153);
        background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
    }
    .notes-card img{ height: 40px; width: 40px; }
    .notes-card p { color: aqua; font-size: 13px;}
</style>
<body>
    <div class="sidebar close">
        <div class="logo-details">
            <i class="sc"><img src="welcome_sclogo_white.png" alt=""></i>
            <span class="logo_name"> Sharma Classes </span>
        </div>
        <ul class="nav-links">
        <li>
            <div class="icon-link">
                <a href="#">
                    <i class='bx bxs-user' ></i>
                    <span class="link_name"><%= ((Student)session.getAttribute("student")).getName()%></span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="#"><%= ((Student)session.getAttribute("student")).getName()%></a></li>
                <li><a href="view_profile.jsp">View Profile</a></li>
            </ul>
        </li>
        <li>
            <div class="icon-link">
                <a href="#">
                    <i class='bx bx-collection' ></i>
                    <span class="link_name">Category</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="#">Category</a></li>
                <li><a href="#">HTML</a></li>
                <li><a href="#">CSS</a></li>
                <li><a href="#">JavaScript</a></li>
                <li><a href="https://drive.google.com/file/d/1JXYFD3wFy7qq6lrMiHRaKuijhpuS9fKb/view?usp=drivesdk" target="_blank">C Programming</a></li>
                <li><a href="#">C++</a></li>
                <li><a href="#">Java</a></li>
                <li><a href="#">Python</a></li>
                <li><a href="maths_notes.jsp">Mathematics</a></li>
            </ul>
        </li>
        <li>
            <div class="icon-link">
                <a href="#">
                    <i class='bx bx-book-alt' ></i>
                    <span class="link_name">Posts</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
            <li><a class="link_name" href="#">Posts</a></li>
            <li><a href="sample_login.jsp">Login Form</a></li>
            </ul>
        </li>
        <li>
            <a href="change_pwd.jsp">
                <i class='bx bx-cog' ></i>
                <span class="link_name">Change Password</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="change_pwd.jsp">Change Password</a></li>
            </ul>
        </li>
        <li>
            <a href="LogoutSer">
                <i class='bx bx-log-out' href="LogoutSer"></i>
                <span class="link_name">Log-out</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="LogoutSer">Log-out</a></li>
            </ul>
        </li>
        
        <li>
            <div class="profile-details">
                <div class="name-job">
                    <div class="job">Created by</div>
                    <div class="profile_name">Shreya Barnwal</div>
                    <div class="profile_name">Guddu Sharma</div>
                </div>
            </div>
        </li>
    </ul>
    </div>
    <section class="upper-part">
        <div class="upper-content">
            <i class='bx bx-menu' ></i>
            <!--<span class="text">Drop Down Sidebar</span>-->
            
            <i class='bx bxs-user-pin'></i>
            <a  href="about_us.jsp" class="text" > About us</a>
            <i class='bx bxs-megaphone'></i>
            <a  href="Contact.jsp" class="text" > Contact us</a>
        </div>
    </section>
    <section class="con-part">
        <div class="con-content">
            <div class="routine-card">
                <h1> Time Table of the Classes </h1>
                <table class="table-striped">
                    <thead>
                        <tr>
                        <th>SUBJECT</th>
                        <th>FACULTY</th>
                        <th>DAYS</th>
                        <th>TIMING</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td>PYTHON</td>
                        <td><i>SHREYA BARNWAL</i></td>
                        <td>FRI, SAT</td>
                        <td>2:30 PM to 4:00 PM</td>
                        </tr>
                        <tr>
                        <td>MATHEMATICS</td>
                        <td><i>GUDDU SHARMA</i></td>
                        <td>WED, FRI, SAT</td>
                        <td>2:30 PM to 4:00 PM</td>
                        </tr>
                        <tr>
                        <td>HTML5</td>
                        <td><i>SHALU SHARMA</i></td>
                        <td>TUES, THURS, SAT</td>
                        <td>5:30 PM to 7:00 PM</td>
                        </tr>
                        <tr>
                        <td>CSS3</td>
                        <td><i>SAKSHI KAPUR</i></td>
                        <td>TUES, THURS, SAT</td>
                        <td>7:30 PM to 9:00 PM</td>
                        </tr>
                        <tr>
                        <td>JAVASCRIPT</td>
                        <td><i>RIPAN DEY</i></td>
                        <td>FRI, SAT</td>
                        <td>4:30 PM to 6:00 PM</td>
                        </tr>
                        <tr>
                        <td>JAVA</td>
                        <td><i>ABHISHEK SHARMA</i></td>
                        <td>MON, TUES</td>
                        <td>12:30 PM to 2:00 PM</td>
                        </tr>
                        <tr>
                        <td>C LANGUAGE</td>
                        <td><i>DAYA MEHER</i></td>
                        <td>MON, TUES, WED</td>
                        <td>9:00 AM to 10:30 AM</td>
                        </tr>
                        <tr>
                        <td>C++</td>
                        <td><i>VIJAY CHOPRA</i></td>
                        <td>MON, WED, FRI</td>
                        <td>5:30 PM to 7:00 PM</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="con-content">
            <div class="notes-content">
                <h2> SOME OF OUR NOTES </h2>
                <div class="notes-wrapper">
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1MJ_MMil6Chn8xuZgVLYwjoaPzOqsAi1r/view?usp=drivesdk" target="_blank"> 
                            <img src="htmlicon.png" alt=""><br>
                            <p>HMTL</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1MLndMwC83-fm4KzVQ0cjkjGPnuD_hiej/view?usp=drivesdk" target="_blank"> 
                            <img src="css_icon.png" alt=""><br>
                            <p>CSS</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1MPT5lzQShXDxg4kC_n72dKH3ki0SfIG8/view?usp=drivesdk" target="_blank"> 
                            <img src="js_icon.png" alt=""><br>
                            <p>JavaScript</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1MXmgg0A3Wx_NqJdg392X28gQlCZOCeKg/view?usp=drivesdk" target="_blank"> 
                            <img src="css_icon.png" alt=""><br>
                            <p>C Language</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1M_Bv0hD-gmLg4V0z0xjRxW1ozCY19qwa/view?usp=drivesdk" target="_blank"> 
                            <img src="c++_icon.png" alt=""><br>
                            <p>C++</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1MZxn1llBcSl0J8QxlmuNYZ2eijFlK8rk/view?usp=drivesdk" target="_blank"> 
                            <img src="java_icon.png" alt=""><br>
                            <p>Java</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="https://drive.google.com/file/d/1MmHomjk89s9IalKO5dnL7Y-y2doqQe-X/view?usp=drivesdk" target="_blank"> 
                            <img src="python_icon.png" alt=""><br>
                            <p>Python</p>
                        </a>
                    </div>
                    <div class="notes-card">
                        <a href="maths_notes.jsp" target="_blank"> 
                            <img src="maths_icon.png" alt=""><br>
                            <p>Mathematics</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
<script>
    let arrow = document.querySelectorAll(".arrow");
    for (var i = 0; i < arrow.length; i++) {
        arrow[i].addEventListener("click", (e)=>{
            let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
            arrowParent.classList.toggle("showMenu");
        });
    }
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".bx-menu");
    console.log(sidebarBtn);
    sidebarBtn.addEventListener("click", ()=>{
        sidebar.classList.toggle("close");
    });
</script>
</html>