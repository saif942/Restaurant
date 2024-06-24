<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String[] foodName = new String[100];
	int i=0;
	boolean b=false;
	
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT `food_name` FROM `fooditem`" + "ORDER BY `category_id`  asc");
		 while ( rs.next() ) 
            {
			 foodName[i] = rs.getString("food_name");
			 i++;
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
		 <title>Select Food Item</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Select Food Item To Edit Details</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodItemUpdatePageButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infomain">Food Item Name*&nbsp;:</th><td><select name="foodName" required>
			<%for(i=0;i<foodName.length;i++)
			{
					if(foodName[i]!=null)
					{
			%>
					 <option value="<%=foodName[i]%>"><%=foodName[i]%></option>
			<%
					}
			}
			%>
		 </select></td></tr>
		 </table>
		 <br>
		 <table>
		 <tr><td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
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
			 out.println("Something Went Wrong!!!	Please Try Again!!!");
			 RequestDispatcher rd=request.getRequestDispatcher("FoodItemUpdatePage.jsp");
			 rd.forward(request,response);
			}
		%>
		