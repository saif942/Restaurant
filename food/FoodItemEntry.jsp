<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String categoryName=request.getParameter("categoryName");
	String size=request.getParameter("size");
	String quantity=request.getParameter("quantity");
	String weight=request.getParameter("weight");
	String categoryId=new String("");
	String status=new String("");
	boolean b=false;
	
	try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT `category_id`,`status` FROM `foodcategory` WHERE `category_name` = '"+categoryName+"' ");
		 while ( rs.next() ) 
            {
			 categoryId = rs.getString("category_id");
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
		 <title>Food Items Entry</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Enter Food Item</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodItemEntryButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infomain">Category Id&nbsp;:</th><td><input type="text" name="categoryId" value="<%=categoryId%>" readonly></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Category Name&nbsp;:</th><td><input type="text" name="categoryName" value="<%=categoryName%>" readonly></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Food Id*&nbsp;:</th><td><input type="text" name="foodId" value="" placeholder="Enter Food Id" maxlength="10" required></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Food Item Name*&nbsp;:</th><td><input type="text" name="foodName" value="" placeholder="Enter Food Item Name" maxlength="30" required></td></tr>
		 <tr></tr>
		<%
			if(size.equals("Y")&&quantity.equals("Y")&&weight.equals("N")&&categoryName.equals("Beverages"))
			{
		%>
			 <tr><th id="infomain">Size*&nbsp;:</th><td>Small<input type="radio" name="size" value="small" required>Medium<input type="radio" name="size" value="medium" required>
			 Large<input type="radio" name="size" value="Large" required></td></tr>
			 <tr></tr>
			 <tr><th id="infomain">Quantity* (ml)&nbsp;:</th><td><input type="number" name="quantity" value="" placeholder="Enter Quantity" maxlength="3" required></td></tr>
		<%	
			}
			else if(size.equals("Y")&&quantity.equals("N")&&weight.equals("Y"))
			{
		%>
			 <tr><th id="infomain">Size*&nbsp;:</th><td>Half Plate<input type="radio" name="size" value="half" required>Full Plate<input type="radio" name="size" value="full" required></td></tr>
			 <tr></tr>
			 <tr><th id="infomain">Weight* (g)&nbsp;:</th><td><input type="number" name="weight" value="" placeholder="Enter Weight" maxlength="3" required></td></tr>
		<%
			}
				else if(size.equals("N")&&quantity.equals("Y")&&weight.equals("Y"))
				{
		%>
				 <tr><th id="infomain">Quantity*&nbsp;:</th><td><input type="number" name="quantity" value="" placeholder="Enter Quantity" maxlength="3" required></td></tr>
				 <tr></tr>
				 <tr><th id="infomain">Weight* (g)&nbsp;:</th><td><input type="number" name="weight" value="" placeholder="Enter Weight" maxlength="3" required></td></tr>
		<%
				}
					else
					{
					 RequestDispatcher rd=request.getRequestDispatcher("/FoodItemEntryInvalid.jsp");
					 rd.forward(request,response);
					}
		%>
		 <tr></tr>
		 <tr><th id="infomain">Price* (Rs)&nbsp;:</th><td><input type="number" name="price" value="" placeholder="Enter Price" maxlength="3" required></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Status*&nbsp;:</th><td><select name="status" required>
		 <option value="A">Active</option></select></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Description&nbsp;:</th><td><input type="text" name="description" value="" maxlength="50" placeholder="Enter Description About Category"></td></tr>
		 </table>
		 <br>
		 <table>
		 <tr><td><a href="FoodItemEntrypage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
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
			 <tr><td><a href="FoodItemEntryPage.jsp"><input type="button" name="button" value="Food Item Entry Page" class="button"></td>
			 <td><input type="submit" name="button" value="Status Change" class="button"></td></tr>
			 </table>
			 </center>
			 </form>
			 </body>
			 </html>
	<%
			}
	%>