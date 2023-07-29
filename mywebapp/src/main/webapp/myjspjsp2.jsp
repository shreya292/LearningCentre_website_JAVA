<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
	private int n;
	public int factorial(int n)
	{
		return n==0 ? 1 : n*factorial(n-1);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	n = Integer.parseInt(request.getParameter("num"));
	int f = factorial(n);
	out.println(f);
%>
</body>
</html>