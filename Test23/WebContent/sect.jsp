<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>
body {
 background-color: lightblue;
}

}
table, td, th {
    border: 1px solid black;
   
    
}

table {
    border-collapse: collapse;
    width: 80%;
    
}

th {
    height: 50px;
}
</style>
	<%
		Connection connect = null;
		Statement s = null;

		try {
			
			Class.forName("org.postgresql.Driver");

			connect = DriverManager.getConnection("jdbc:postgresql://localhost:5432/test1", "postgres",
					"1234");

			s = connect.createStatement();

			String sql = "SELECT * FROM  public.test50 order by id";

			ResultSet rec = s.executeQuery(sql);
	%>
              <table width="600" border="1">
		  <tr>
		    <th width="91"> <div align="center">CustomerID </div></th>
		    <th width="98"> <div align="center">PASSWORD </div></th>
		    <th width="198"> <div align="center">NAME </div></th>
		  </tr>	
			<%while((rec!=null) && (rec.next())) { %>
				  <tr>
				    <td><div align="center"><%=rec.getString("id")%></div></td>
				    <td><div align="center"><%=rec.getString("Password")%></div></td>
				    <td><div align="center"><%=rec.getString("name")%></div></td>
				    
				  </tr>
	       	<%}%>
	  	</table>      

		<%
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
	
	<form action="index.jsp">     
    <button type="submit" class="btn btn-default" >หน้าแรก</button>
     </form>	
</body>
</html>