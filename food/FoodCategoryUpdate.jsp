<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String categoryName=request.getParameter("categoryName");
	String categoryId=new String("");
	String description=new String("");
	String status=new String("");
	boolean b=false;
	
	try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT `category_id`, `description`,`status` FROM `foodcategory` WHERE `category_name` = '"+categoryName+"' ");
		 while ( rs.next() ) 
            {
			 categoryId = rs.getString("category_id");
			 description = rs.getString("description");
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
		if(b&&status.equals("A"))
		{
	%>
		 <html>
		 <head>
		 <title>Food Category Rename</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Enter New Name OF Food Category</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodCategoryUpdateButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infomain">Category Id&nbsp;:</th><td><input type="text" name="categoryId" value="<%=categoryId%>" readonly></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Old Food Category Name&nbsp;:</th><td><input type="text" name="oldCategoryName" value="<%=categoryName%>" readonly></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">New Food Category Name*&nbsp;:</th><td><input type="text" name="newCategoryName" value="" placeholder="Enter New Food Categroy" maxlength="30" required></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Description&nbsp;:</th><td><input type="text" name="description" value="<%=description%>" maxlength="50" placeholder="Enter Description About Category"></td></tr>
		 </table>
		 <br>
		 <table>
		 <td><a href="FoodCategoryUpdatePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
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
		