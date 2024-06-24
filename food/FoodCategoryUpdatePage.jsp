<%@page import="java.sql.*"%>

<%	
	String email=(String)session.getAttribute("email");
	String[] categoryName = new String[100];
	int i=0;
	boolean b=false;
	
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT `category_name` FROM `foodcategory`" + "ORDER BY `category_name` asc");
		 while ( rs.next() ) 
            {
			 b=true;
			 categoryName[i] = rs.getString("category_name");
			 i++;
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
		 <title>Select Food Category</title>
		 <link rel="stylesheet" type="text/css" href="../css/foodentry.css">
		 </head>

		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Select Food Category To Update</center></b></h1>

	
		 <!-- Info part -->
		 <form action="FoodCategoryUpdatePageButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infomain">Category Name*&nbsp;:</th><td><select name="categoryName" required>
			<%for(i=0;i<categoryName.length;i++)
			{
					if(categoryName[i]!=null)
					{
			%>
					 <option value="<%=categoryName[i]%>"><%=categoryName[i]%></option>
			<%
					}
			}
			%>
		 </select></td></tr>
		 </table>
		 <br>
		 <table>
		 <td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
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
			 RequestDispatcher rd=request.getRequestDispatcher("../employee/EmployeeProfilePage.jsp");
			 rd.forward(request,response);
			}
		%>
		