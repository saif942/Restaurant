<%@page import="java.sql.*"%>

<%	
	String email=request.getParameter("email");
	session.setAttribute("email",email);
	session.setMaxInactiveInterval(120);
	String password=request.getParameter("password");
	session.setAttribute("password",password);
	session.setMaxInactiveInterval(120);
	String status=request.getParameter("status");
	session.setAttribute("status",status);
	session.setMaxInactiveInterval(120);
	
	boolean b=false;
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT * FROM `login` WHERE (email='"+email+"' AND password='"+password+"' AND status='"+status+"')");
		 while ( rs.next() ) 
            {
             b=true;
			}
         conn.close();		
		}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
			
			if(b)
			{
			 RequestDispatcher rd=request.getRequestDispatcher("CustomerUpdate.jsp");
			 rd.forward(request,response);
			}
			else
			{
%>
			 <html>
			 <head>
			 <title>Login</title>
			 <link rel="stylesheet" type="text/css" href="../css/update.css">
			 </head>
			 <body>
			 <center><h1 id="infomain">Sorry! E-Mail Id or Password Is Incorrect<font><center>
			 <br>
			 </body>
			 </html>
		<%
			 RequestDispatcher rd=request.getRequestDispatcher("CustomerUpdatePage.jsp");
			 rd.include(request,response);
			}
		%>