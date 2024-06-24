<%@page import="java.sql.*"%>


<%
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
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
		String rePassword=request.getParameter("repassword");
		boolean b=false;
		if(password.equals(rePassword))
		{
			try 
			{
			 Class.forName("com.mysql.jdbc.Driver");
			 String url = "jdbc:mysql://localhost:3306/restaurant";
			 Connection conn = DriverManager.getConnection(url,"root","");
			 Statement  stmt = conn.createStatement();
			 ResultSet rs;
			 stmt.executeUpdate("INSERT into `customerinfo` values('"+firstName+"','"+lastName+"','"+email+"','"+gender+"','"+mobileNumber+"','"+alternativeNumber+"','"+occupation+"','"+aadharId+"')");
			 stmt.executeUpdate("INSERT into `customeraddress` values('"+email+"','"+addressLine1+"','"+addressLine2+"','"+city+"','"+state+"','"+pincode+"','"+landmark+"')");
			 stmt.executeUpdate("INSERT into `login` values('"+email+"','"+password+"','customer','P')");
			 b=true;
			 conn.close();
			}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
		}
				
				if(b)
				{
%>
				 <html>
				 <head>
				 <title><link rel="stylesheet" type="text/css" href="../css/login.css"></title>
				 </head>
				 <body>
				 <h1 id="infomain"><b>Sign Up Successful!!!</b></h1>
				 <h2 id="infomain"><b>Welcome To Restuarant!!!</b></h1>
				 </body>
				 </html>
		<%
				 RequestDispatcher rd=request.getRequestDispatcher("../common/LoginPage.jsp");
				 rd.forward(request,response);
				}
				
				else
				{
		%>
				 <html>
				 <head>
				 <title>Login</title>
				 <link rel="stylesheet" type="text/css" href="CSS Files/login.css">
				 </head>
				 <body>
				 <center><h1 id="title">Sorry! Some Error Occured<center>
				 <br>
				 </body>
				 </html>
		<%
				 RequestDispatcher rd=request.getRequestDispatcher("../common/Homepage.jsp");
				 rd.include(request,response);
				}
%>