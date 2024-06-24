<%@page import="java.sql.*"%>

<%	
	String updatingId=(String)session.getAttribute("email");
	String foodId=request.getParameter("foodId");
	String foodName=request.getParameter("foodName");
	String size=request.getParameter("size");
	String quantity=request.getParameter("quantity");
	String weight=request.getParameter("weight");
	String price=request.getParameter("price");
	java.util.Date date = new java.util.Date();
	java.sql.Date updatingDate = new java.sql.Date(date.getTime());
	String description=request.getParameter("description");
	
		try 
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Connection conn = DriverManager.getConnection(url,"root","");
		 Statement  stmt = conn.createStatement();
		 ResultSet rs;
		 stmt.executeUpdate("UPDATE `fooditem` SET `food_name` = '"+foodName+"', `size` = '"+size+"', `quantity` = '"+quantity+"', `weight` = '"+weight+"', `price` = '"+price+"', `updating_id` = '"+updatingId+"', `updating_date` = '"+updatingDate+"', `description` = '"+description+"' WHERE `fooditem`.`food_id` = '"+foodId+"'");
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
		 <title>Food Item Update</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>
		 <body>
		 <!-- Info part -->
		 <form action="FoodItemUpdatePage.jsp">
		 <center>
		 <h1 id="infohead">Food Item Updated!!!</h1>
		 <table>
		 <tr><td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Profile Page" class="button"></td>
		 <td><input type="submit" name="button" value="Edit Another" class="button"></td></tr>
		 </table>
		 </center>
		 </form>
		 </body>
		 </html>