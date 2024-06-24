<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String foodName=request.getParameter("foodName");
	String foodId=new String("");
	String size=new String("");
	String quantity=new String("");
	String weight=new String("");
	String price=new String("");
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
 		 rs = stmt.executeQuery("SELECT `food_id`, `food_name`, `size`, `quantity`, `weight`, `price`, `description`,`status` FROM `fooditem` WHERE `food_name` = '"+foodName+"'");
		 while ( rs.next() ) 
            {
			 foodId = rs.getString("food_id");
			 foodName = rs.getString("food_name");
			 size = rs.getString("size");
			 quantity = rs.getString("quantity");
			 weight = rs.getString("weight");
			 price = rs.getString("price");
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
		 <title>Food Item Details</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Enter New Details Of Food Item</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodItemUpdateButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infomain">Food Id&nbsp;:</th><td><input type="text" name="foodId" value="<%=foodId%>" readonly></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Food Item Name&nbsp;:</th><td><input type="text" name="foodName" value="<%=foodName%>"></td></tr>
		 <tr></tr>
		<%
			if(weight.equals("null")&&size.equals("small"))
			{
		%>
			 <tr><th id="infomain">Size*&nbsp;:</th><td>Small<input type="radio" name="size" value="<%=size%>" required checked>Medium<input type="radio" name="size" value="medium" required>
			 Large<input type="radio" name="size" value="Large" required></td></tr>
			 <tr></tr>
			 <tr><th id="infomain">Quantity* (ml)&nbsp;:</th><td><input type="number" name="quantity" value="<%=quantity%>" placeholder="Enter Quantity" maxlength="3" required></td></tr>
		<%
			}
				else if(weight.equals("null")&&size.equals("medium"))
				{
		%>
				 <tr><th id="infomain">Size*&nbsp;:</th><td>Small<input type="radio" name="size" value="small" required checked>Medium<input type="radio" name="size" value="<%=size%>" required checked>
				 Large<input type="radio" name="size" value="Large" required></td></tr>
				 <tr></tr>
				 <tr><th id="infomain">Quantity* (ml)&nbsp;:</th><td><input type="number" name="quantity" value="<%=quantity%>" placeholder="Enter Quantity" maxlength="3" required></td></tr>
		<%	
				}
					else if(weight.equals("null")&&size.equals("large"))
					{
		%>
					 <tr><th id="infomain">Size*&nbsp;:</th><td>Small<input type="radio" name="size" value="small" required checked>Medium<input type="radio" name="size" value="medium" required checked>
					 Large<input type="radio" name="size" value="<%=size%>" required checked></td></tr>
					 <tr></tr>
					 <tr><th id="infomain">Quantity* (ml)&nbsp;:</th><td><input type="number" name="quantity" value="<%=quantity%>" placeholder="Enter Quantity" maxlength="3" required></td></tr>
		<%	
					}
						else if(quantity.equals("null")&&size.equals("half"))
						{
		%>
						 <tr><th id="infomain">Size*&nbsp;:</th><td>Half Plate<input type="radio" name="size" value="<%=size%>" required checked>Full Plate<input type="radio" name="size" value="full" required></td></tr>
						 <tr></tr>
						 <tr><th id="infomain">Weight* (g)&nbsp;:</th><td><input type="number" name="weight" value="<%=weight%>" placeholder="Enter Weight" maxlength="3" required></td></tr>
		 <%	
						}
							else if(quantity.equals("null")&&size.equals("full"))
							{
		%>
							 <tr><th id="infomain">Size*&nbsp;:</th><td>Half Plate<input type="radio" name="size" value="half" required checked>Full Plate<input type="radio" name="size" value="<%=size%>" required></td></tr>
							 <tr></tr>
							 <tr><th id="infomain">Weight* (g)&nbsp;:</th><td><input type="number" name="weight" value="<%=weight%>" placeholder="Enter Weight" maxlength="3" required></td></tr>
		<%
							}
								else if(size.equals("null"))
								{
		%>
								 <tr><th id="infomain">Quantity*&nbsp;:</th><td><input type="number" name="quantity" value="<%=quantity%>" placeholder="Enter Quantity" maxlength="3" required></td></tr>
								 <tr></tr>
								 <tr><th id="infomain">Weight* (g)&nbsp;:</th><td><input type="number" name="weight" value="<%=weight%>" placeholder="Enter Weight" maxlength="3" required></td></tr>
		<%
								}
									else
									{
									 
									}
		%>
		 <tr></tr>
		 <tr><th id="infomain">Price* (Rs)&nbsp;:</th><td><input type="number" name="price" value="<%=price%>" placeholder="Enter Price" maxlength="3" required></td></tr>
		 <tr></tr>
		 <tr><th id="infomain">Description&nbsp;:</th><td><input type="text" name="description" value="<%=description%>" maxlength="50" placeholder="Enter Description About Category"></td></tr>
		 </table>
		 <br>
		 <table>
		 <tr><td><input type="reset" value="Reset" class="button"></td>
		 <td><a href="FoodItemUpdatePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
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
			 <title>Food Item Status</title>
			 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
			 </head>

			 <body>


			 <!-- header part -->
			 <h1 id="title"><b><center>Food Item Is Deactive!!!</center></b></h1>

	
			 <!-- Info part -->
			 <form action="FoodItemStatusPage.jsp">
			 <center>
			 <table>
			 <tr><td><a href="FoodItemUpdatePage.jsp"><input type="button" name="button" value="Food Item Update Page" class="button"></td>
			 <td><input type="submit" name="button" value="Status Change" class="button"></td></tr>
			 </table>
			 </center>
			 </form>
			 </body>
			 </html>
	<%	
			}
	%>
		