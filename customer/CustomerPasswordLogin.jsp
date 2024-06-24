<%@page import="java.sql.*"%>

<%	
	String email=request.getParameter("email");
	session.setAttribute("email",email);
	session.setMaxInactiveInterval(120);
	String password=request.getParameter("password");
	session.setAttribute("password",password);
	session.setMaxInactiveInterval(120);
	String acctype=request.getParameter("type");
	session.setAttribute("type",acctype);
	session.setMaxInactiveInterval(120);
	
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
		 RequestDispatcher rd=request.getRequestDispatcher("CustomerPasswordPage.jsp");
		 rd.include(request,response);
		}
			
		else
		{
%>
			 <html>
			 <head>
			 <title>Login</title>");
			 <link rel="stylesheet" type="text/css" href="../css/login.css">
			 </head>
			 <body>
			 <center><h1 id="infomain">Sorry! E-Mail Id or Password Is Incorrect<font><center>
			 <br>
			 </body>
			 </html>
	<%
			RequestDispatcher rd=request.getRequestDispatcher("CustomerPasswordChangePage.jsp");
			 rd.include(request,response);
		}
	%>