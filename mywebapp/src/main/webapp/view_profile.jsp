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
    <title>Profile Card</title>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,200;0,300;0,400;1,300&display=swap');
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        list-style: none;
        font-family: 'Montserrat', sans-serif;
    }
    body{ background-color: #f3f3f3; color: #000; }
    .wrapper{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        height: 400px;
        width: 600px;
        display: flex;
        box-shadow: 0 1px 20px 0 rgba(69,90,100,.08);
    }
    .wrapper .left{
        width: 35%;
        background: linear-gradient(to right,#01a9ac,#01dbdf);
        padding: 30px 25px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        text-align: center;
        color: #fff;
    }
    .wrapper .left img{ border-radius: 5px; margin-bottom: 10px; }
    .wrapper .left h3{ margin-bottom: 10px; text-transform: uppercase; }
    .wrapper .left p{ font-size: 12px; }
    .wrapper .right{
        width: 65%;
        background: #fff;
        padding: 30px 25px;
        border-top-right-radius: 5px;
        border-bottom-right-radius: 5px;
    }
    .wrapper .right .info, .wrapper .right .parents{ margin-bottom: 25px; }
    .wrapper .right .info h3,
    .wrapper .right .parents h3{
        margin-bottom: 15px;
        padding-bottom: 5px;
        border-bottom: 1px solid #e0e0e0;
        color: #353c4e;
        text-transform: uppercase;
        letter-spacing: 5px;
    }
    .wrapper .right .info_data,
    .wrapper .right .parents_data{ display: flex; justify-content: space-between; }
    .wrapper .right .info_data .data,
    .wrapper .right .parents_data .data{ width: 65%; }
    .wrapper .right .info_data .data h4,
    .wrapper .right .parents_data .data h4{ color: #353c4e; margin-bottom: 5px; }

    .wrapper .right .info_data .data p,
    .wrapper .right .parents_data .data p{ font-size: 13px; margin-bottom: 10px; color: #919aa3; }
	@media only screen and (max-width: 650px) {
		.wrapper { width: 88%; height: 400px; }
		.wrapper .left img { width: 50%; }
		.wrapper .left h3 { font-size: 16px; text-align: center; }
		.wrapper .right .info h3 { font-size: 14px; letter-spacing: 2px; }
		.info_data .data h4 { font-size: 12px; }
		.wrapper .right .parents h3 { font-size: 14px; letter-spacing: 2px; }
		.parents_data .data h4 { font-size: 12px; }
	}
</style>
<body>
	<div class="wrapper">
        <div class="left">
            <img src="profile.jpg" alt="user" width="100">
            <h3><%= ((Student)session.getAttribute("student")).getName()%></h3>
            <p>STUDENT</p><br>
        </div>
        <div class="right">
            <div class="info">
                <h3>Information</h3>
                <div class="info_data">
                     <div class="data">
                        <h4>Email</h4>
                        <p><%= ((Student)session.getAttribute("student")).getEid()%></p>
                     </div>
                </div>
                <div class="info_data">
                    <div class="data">
                       <h4>Gender</h4>
                        <p><%= ((Student)session.getAttribute("student")).getGender() %></p>
                       </div>
                </div>
            </div>
            <div class="parents">
                <h3>Parent</h3>
                <div class="parents_data">
                    <div class="data">
                        <h4>Father's Name</h4>
                        <p><%= ((Student)session.getAttribute("student")).getFname() %></p>
                    </div>
                </div>
                <div class="parents_data">
                    <div class="data">
                        <h4>Mother's Name</h4>
                        <p><%= ((Student)session.getAttribute("student")).getMname() %></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>