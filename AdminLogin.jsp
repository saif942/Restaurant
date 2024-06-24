<%@page import="java.sql.*"%>

<%
		String s1=request.getParameter("email");
		session.setAttribute("email",s1);
		session.setMaxInactiveInterval(1800);
		String s2=request.getParameter("password");
		session.setAttribute("password",s2);
		session.setMaxInactiveInterval(1800);
		boolean b=false;
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT * FROM `adminlogin` WHERE (email='"+s1+"' AND password='"+s2+"')");
		 while ( rs.next() ) 
            {
			 b=true;
             s1 = rs.getString("email");
			 s2 = rs.getString("password");
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
			 RequestDispatcher rd=request.getRequestDispatcher("");
			 rd.forward(request,response);
			}
			else
			{
			 out.println("<html>");
			 out.println("<head>");
			 out.println("<title>Login</title>");
			 out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"CSS Files/login.css\">");
			 out.println("</head>");
			 out.println("<body>");
			 out.print("<center><h1 id=\"title\">Sorry! E-Mail Id or Password Is Incorrect<font><center>");
			 out.println("<br>");
			 out.println("</body>");
			 out.println("</html>");
			 RequestDispatcher rd=request.getRequestDispatcher("/AdminLoginPage.jsp");
			 rd.include(request,response);
			}
%>