<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>First Name :<%=request.getParameter("t1")  %></h1>
            <h1>last Name :<%=request.getParameter("t2")  %></h1>
            <h1>you like :<%=request.getParameter("uname")  %></h1>
            <h1>Gender:<%=request.getParameter("df")  %></h1>
</body>
</html>