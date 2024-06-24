<%@page import="java.sql.*"%>

<%
		String email=request.getParameter("email");
		session.setAttribute("email",email);
		session.setMaxInactiveInterval(1800);
		String password=request.getParameter("password");
		session.setAttribute("password",password);
		session.setMaxInactiveInterval(1800);
		String acctype=request.getParameter("type");
		String status=new String("");
		boolean b=false;
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT * FROM `login` WHERE (email='"+email+"' AND password='"+password+"' AND type='"+acctype+"')");
		 while ( rs.next() ) 
            {
             email = rs.getString("email");
			 password = rs.getString("password");
			 acctype = rs.getString("type");
			 status = rs.getString("status");
			 b=true;
			}	
		}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
			if(b&&acctype.equals("customer")&&(status.equals("A")||status.equals("P")))
			{
			 RequestDispatcher rd=request.getRequestDispatcher("../customer/CustomerProfilePage.jsp");
			 rd.forward(request,response);
			}
				else if(b&&acctype.equals("employee")&&(status.equals("A")||status.equals("P")))
				{
				 RequestDispatcher rd=request.getRequestDispatcher("../employee/EmployeeProfilePage.jsp");
				 rd.forward(request,response);
				}
					else if(b&&acctype.equals("admin")&&status.equals("A")&&password.equals("12345"))
					{
					 RequestDispatcher rd=request.getRequestDispatcher("../admin/AdminPasswordChangePage.jsp");
					 rd.forward(request,response);
					}
						else if(b&&acctype.equals("admin")&&status.equals("A"))
						{
						 RequestDispatcher rd=request.getRequestDispatcher("../admin/AdminProfilePage.jsp");
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
							 <center><h1 id="infomain">Sorry! E-Mail Id or Password Is Incorrect<font><center>
							 <br>
							 </body>
							 </html>
						<%
							 RequestDispatcher rd=request.getRequestDispatcher("LoginPage.jsp");
							 rd.include(request,response);
							}
%>