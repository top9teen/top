<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>
body {
 background-color: lightblue;
}
k {
 
}
 </style>

<link rel="stylesheet" href="css/style.css">


</head>
<body>

<form action="connet.jsp" method="post">

         <div class="from-group">
               <label for="fname">id </label>
               <input type="text" class="form-control" name="t1">
         </div>
         <div class="from-group">
               <label for="lastname">pass</label>
               <input type="text" class="form-control" name="t2">
         </div>
          <div class="from-group">
               <label for="Username">name</label>
               <input type="text" class="form-control" name="t3">
         </div>  
        
        <button type="submit" class="btn btn-default">เพิ่ม</button>
        </form> 
     

</body>
</html>