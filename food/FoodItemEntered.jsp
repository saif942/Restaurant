<%@page import="java.sql.*"%>

<%	
	String addingId=(String)session.getAttribute("email");
	String categoryId=request.getParameter("categoryId");
	String foodId=request.getParameter("foodId");
	String foodName=request.getParameter("foodName");
	String size=request.getParameter("size");
	String quantity=request.getParameter("quantity");
	String weight=request.getParameter("weight");
	String price=request.getParameter("price");
	java.util.Date date = new java.util.Date();
	java.sql.Date addingDate = new java.sql.Date(date.getTime());
	String status=request.getParameter("status");
	String description=request.getParameter("description");
		
		try 
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Connection conn = DriverManager.getConnection(url,"root","");
		 Statement  stmt = conn.createStatement();
		 ResultSet rs;
		 stmt.executeUpdate("INSERT INTO `fooditem` (`category_id`, `food_id`, `food_name`, `size`, `quantity`, `weight`, `price`, `adding_id`, `adding_date`, `description`, `status`) VALUES ('"+categoryId+"', '"+foodId+"', '"+foodName+"','"+size+"', '"+quantity+"', '"+weight+"', '"+price+"', '"+addingId+"', '"+addingDate+"', '"+description+"', '"+status+"')");
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
		 <title>Food Item Entered</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>
		 <body>
		 <!-- Info part -->
		 <form action="FoodItemEntryPage.jsp">
		 <center>
		 <h1 id="infohead">Food Item Entered</h1>
		 <table>
		 <tr><td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Profile Page" class="button"></td>
		 <td><input type="submit" name="button" value="Add Another" class="button"></td></tr>
		 </table>
		 </center>
		 </form>
		 </body>
		 </html>