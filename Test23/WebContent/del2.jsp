<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
    <%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>

<form action="del.jsp" method="post">

         <div class="from-group">
               <label for="fname">id</label>
               <input type="text" class="form-control" name="t1">
         </div>
        
         
     
     <button type="submit" class="btn btn-default">ลบข้อมูล</button>
     </form>

</div>

</body>
</html>