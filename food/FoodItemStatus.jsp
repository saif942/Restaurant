<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String foodName=request.getParameter("foodName");
	String foodId=new String("");
	String status=new String("");
	boolean b=false;
	
	try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT `food_id`, `status` FROM `fooditem` WHERE `food_name` = '"+foodName+"' ");
		 while ( rs.next() ) 
            {
			 foodId = rs.getString("food_id");
			 status = rs.getString("status");
			 b=true;
			}
		conn.close();		
		}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
%>

	<%
		if(b)
		{
	%>
		 <html>
		 <head>
		 <title>Food Item Status</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Change Food Item Status</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodItemStatusButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infomain">Food Id&nbsp;:</th><td><input type="text" name="foodId" value="<%=foodId%>" readonly></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Food Item Name&nbsp;:</th><td><input type="text" name="foodName" value="<%=foodName%>" readonly></td></tr>
		 <tr></tr>
	<%
		 if(status.equals("A"))
		 {
	%>
		 <tr><th id="infomain">Status&nbsp;:</th><td>Active<input type="radio" name="status" value="<%=status%>" required checked>Deactive<input type="radio" name="status" value="D" required></td></tr>
	<%
		 }
			else
			{
	%>
			 <tr><th id="infomain">Status&nbsp;:</th><td>Active<input type="radio" name="status" value="A" required>Deactive<input type="radio" name="status" value="<%=status%>" required checked></td></tr>
	<%
			}
	%>
		 <tr></tr>
		 </table>
		 <br>
		 <table>
		 <td><a href="FoodItemStatusPage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
		 <td><input type="submit" name="button" value="Submit" class="button"></td></tr>
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
			 <title>Food Categroy Status</title>
			 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
			 </head>

			 <body>


			 <!-- header part -->
			 <h1 id="title"><b><center>Food Category Is Deactive!!!</center></b></h1>

	
			 <!-- Info part -->
			 <form action="FoodCategoryStatusPage.jsp">
			 <center>
			 <table>
			 <tr><td><a href="FoodCategoryUpdatePage.jsp"><input type="button" name="button" value="Back" class="button"></td>
			 <td><input type="submit" name="button" value="Status Change" class="button"></td></tr>
			 </table>
			 </center>
			 </form>
			 </body>
			 </html>
	<%
			}
	%>
		