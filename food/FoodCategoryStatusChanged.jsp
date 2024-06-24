<%@page import="java.sql.*"%>


<%
	String email=(String)session.getAttribute("email");
	
	String categoryId=request.getParameter("categoryId");
	String status=request.getParameter("status");
	java.util.Date date = new java.util.Date();
	java.sql.Date updatingDate = new java.sql.Date(date.getTime());
	
		try 
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Connection conn = DriverManager.getConnection(url,"root","");
		 Statement  stmt = conn.createStatement();
		 stmt.executeUpdate("UPDATE `foodcategory` SET `updating_id` = '"+email+"', `updating_date` = '"+updatingDate+"', `status` = '"+status+"' WHERE `category_id` = '"+categoryId+"'");
		 stmt.executeUpdate("UPDATE `fooditem` SET `updating_id` = '"+email+"', `updating_date` = '"+updatingDate+"', `status` = '"+status+"' WHERE `category_id` = '"+categoryId+"'");
		 ResultSet rs;
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
		 <title>Food Category Status Changed</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Food Category Status Updated!!!</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodCategoryStatusPage.jsp">
		 <center>
		 <br>
		 <table>
		 <tr><td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Profile Page" class="button"></td>
		 <td><input type="submit" name="button" value="Food Category Status Page" class="button"></td></tr>
		 </table>
		 </center>
		 </form>
		 </body>
		 </html>