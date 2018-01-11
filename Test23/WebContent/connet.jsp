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


  <%
  int studentId;
     Connection connect = null;
		Statement s = null;
		
		try {
			Class.forName("org.postgresql.Driver");

			connect = DriverManager.getConnection("jdbc:postgresql://localhost:5432/test1", "postgres",
					"1234");

			s = connect.createStatement();

		     String sql = "INSERT INTO public.test50" + " (id,password,name)"
		     +" VALUES ('"+request.getParameter("t1")+"','"+request.getParameter("t2")
		     +"','"+request.getParameter("t3")+"') "; 
		       
		//	ResultSet rec = s.executeQuery(sql);
			s.execute(sql);
          
	        
			} catch (Exception e) {
				// TODO Auto-generated catch block
				out.println(e.getMessage());
				e.printStackTrace();
			}

			try {
				if (s != null) {
					s.close();
					connect.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				out.println(e.getMessage());
				e.printStackTrace();
			}
     
     
     %>
     <h1> Record Inserted Successfully  </h1>
     
     <form action="sect.jsp" method="post">
     
     <button type="submit" class="btn btn-default">ดูข้อมูล</button>
     
     
     </form>
</body>
</html>