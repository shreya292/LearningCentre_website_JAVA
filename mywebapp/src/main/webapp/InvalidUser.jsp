<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invalid User</title>
</head>
<style>
    body {
        background: #dfe9f5;
        animation: changeBg 8s infinite alternate linear;
    }
    @keyframes changeBg {
        0% { background : #ff8b83; }
        25% { background : #cbf69a; }
        50% { background : #9de0f9; }
        100% { background : #f797dd; }
    }
    .align_center {
        text-align: center;
        font-size: large;
        font: status-bar;
        font-weight: normal;
        font-size: medium;
        font-family: monospace;
    }
    .inner {
        border: 2px solid rgb(247, 87, 59);
        padding: 15px;
        margin: 20px;
    }
    .message {
        text-align: center;
        font-size: large;
        font: status-bar;
        font-weight: normal;
        font-size: medium;
        font-family: monospace;
    }
    .message h1 { 
    	color: red;
    }
    .inmiddle {
        margin: 200px;
    }
</style>
<body>
    <div class="inmiddle">
        <div class="inner">
            <div class="message">
                <h1> Invalid Email-ID or Password</h1>
                <h3> Entered email id is <b>NOT Registered</b> one or Entered <b>Password</b> is wrong . 
                	<br>Please enter the <em>Registered Email-ID</em> or <em>Correct Password</em>.
                </h3>
            </div>
        </div>
        <fieldset class="align_center">
            <a class="align_center" style = "font-weight: bold;" href="Sharmaclasses.jsp">Click here to getback to the Signup/Login page.</a>
        </fieldset>
    </div>
</body>
</html>