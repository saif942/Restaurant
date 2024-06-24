<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String newPassword=request.getParameter("newPassword");
	String rePassword=request.getParameter("rePassword");
		
	if(newPassword.equals(rePassword))
	{
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 stmt.executeUpdate("UPDATE `login` SET `password` = '"+newPassword+"' WHERE `login`.`email` = '"+email+"'");
         conn.close();		
		}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
%>
		<html>
		<head>
		<title>Customer Password Changed</title>
		<link rel="stylesheet" type="text/css" href="../css/login.css">
		</head>
		<body>

		<!-- header part -->
		<h1 id="title"><center>Password Changed Successfully!!!</center></h1>
		
		<!-- Info part -->
		<form action="../common/LoginPage.jsp">
		<center>
		<table>
		<tr><td><input type="submit" name="button" value="Login" class="button"></td></tr>
		</table>
		</center>
		</form>
		</body>
		</html>
	
	
	
	<%
	}
	else
	{
	%>
		 <html>
		 <head>
		 <title>Login</title>
		 <link rel="stylesheet" type="text/css" href="../css/login.css">
		 </head>
		 <body>
		 <center><h1 id="infomain">Sorry! New Password And Re-Enter New Password Doesn't Match!<font><center>
		 <br>
		 </body>
		 </html>
	<%
		 RequestDispatcher rd=request.getRequestDispatcher("CustomerPasswordChange.jsp");
		 rd.include(request,response);
	}
	%>