<%@page import="java.sql.*"%>
<%@page session="false"%>


<%
	HttpSession session = request.getSession(false);
	if(session==null)
	{
	 out.println("The Session You Are Looking For Is Expired");
	 RequestDispatcher rd=request.getRequestDispatcher("../common/LoginPage.jsp");
	 rd.include(request,response);
	}
		else
		{
		 String emailr=(String)session.getAttribute("email");
		
		 String firstName=request.getParameter("firstName");
		 String lastName=request.getParameter("lastName");
		 String email=request.getParameter("email");
		 String gender=request.getParameter("gender");
		 String mobileNumber=request.getParameter("mobileNumber");
		 String alternativeNumber=request.getParameter("alternativeNumber");
		 String occupation=request.getParameter("occupation");
		 String aadharId=request.getParameter("aadharId");
		 String addressLine1=request.getParameter("addressLine1");
		 String addressLine2=request.getParameter("addressLine2");
		 String city=request.getParameter("city");
		 String state=request.getParameter("state");
		 String pincode=request.getParameter("pincode");
		 String landmark=request.getParameter("landmark");
		 boolean b=false;
		
			try 
			{
			 Class.forName("com.mysql.jdbc.Driver");
			 String url = "jdbc:mysql://localhost:3306/restaurant";
			 Connection conn = DriverManager.getConnection(url,"root","");
			 Statement  stmt = conn.createStatement();
			 ResultSet rs;
			 stmt.executeUpdate("UPDATE `customerinfo` SET `first_name` = '"+firstName+"', `last_name` = '"+lastName+"', `email` = '"+email+"', `gender` = '"+gender+"', `mobile_number` = '"+mobileNumber+"', `alternative_number` = '"+alternativeNumber+"', `occupation` = '"+occupation+"', `aadhar_id` = '"+aadharId+"' WHERE `customerinfo`.`email` = '"+emailr+"'");
			 stmt.executeUpdate("UPDATE `customeraddress` SET `email` = '"+email+"', `address_line1` = '"+addressLine1+"', `address_line2` = '"+addressLine2+"', `city` = '"+city+"', `state` = '"+state+"', `pincode` = '"+pincode+"', `landmark` = '"+landmark+"' WHERE `customeraddress`.`email` = '"+emailr+"'");
			 stmt.executeUpdate("UPDATE `login` SET `email` = '"+email+"' WHERE `login`.`email` = '"+emailr+"'");
			 b=true;
			 conn.close();
			}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
				
				if(b)
				{
%>
				 <html>
				 <head>
				 <title>Customer Details Updated</title>
				 <link rel="stylesheet" type="text/css" href="../css/Login.css">
				 </head>
				 <body>

				 <!-- header part -->
				 <h1 id="title"><center>Customer Details Updated!!!</center></h1>
		
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
				 <title>Customer Update</title>
				 <link rel="stylesheet" type="text/css" href="../css/update.css">
				 </head>
				 <body>
				 <center><h1 id="infomain">Sorry! Your Details Is Not Updated!!!</h1><font><center>
				 </body>
				 </html>
			<%
				 RequestDispatcher rd=request.getRequestDispatcher("CustomerDetailsPage.jsp");
				 rd.include(request,response);
				}
		}
			%>