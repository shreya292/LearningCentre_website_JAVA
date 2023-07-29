<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    body{
          width:500px;
          margin-left:auto;
          margin-right:auto;
        }
    label{
       width:100px;
       float: left;
        }  
</style>     
</head>
<body>
	<form action="Login_servlet" method="post">
		<h1>Login page</h1>
    	<p>
			<label for ="uid">User id</label>
			<input type="text" name="uid">
        </p>
        <p>
        	<label for="pwd">Password</label>
            <input type="Password" name="pwd">
        </p>
        <p>
            <input type="submit" value ="Log In">   
        </p>
      </form>  
</body>
</html>