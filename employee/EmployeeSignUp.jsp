<%@page import="java.sql.*"%>
        
		
<%
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String mobileNumber=request.getParameter("mobileNumber");
		String designation=request.getParameter("designation");
		String aadharId=request.getParameter("aadhaarId");
		String addressLine1=request.getParameter("addressLine1");
		String addressLine2=request.getParameter("addressLine2");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pincode=request.getParameter("pincode");
		String landmark=request.getParameter("landmark");
		String cAddressLine1=request.getParameter("cAddressLine1");
		String cAddressLine2=request.getParameter("cAddressLine2");
		String cCity=request.getParameter("cCity");
		String cState=request.getParameter("cState");
		String cPincode=request.getParameter("cPincode");
		String cLandmark=request.getParameter("cLandmark");
		String highSchool=request.getParameter("highschool");
		String intermediate=request.getParameter("intermediate");
		String graduationCourse=request.getParameter("graduationCourse");
		String graduationPercentage=request.getParameter("graduationPercentage");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		boolean b=false;

		try 
		{
		 Class.forName("com.mysql.jdbc.Driver");
		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Connection conn = DriverManager.getConnection(url,"root","");
		 Statement  stmt = conn.createStatement();
		 ResultSet rs;
		 stmt.executeUpdate("INSERT INTO `employeeinfo` values ('"+firstName+"','"+lastName+"','"+email+"','"+gender+"','"+mobileNumber+"','"+designation+"','"+aadharId+"')");
		 stmt.executeUpdate("INSERT INTO `employeeaddress` values('"+email+"','"+addressLine1+"','"+addressLine2+"','"+city+"','"+state+"','"+pincode+"','"+landmark+"')");
		 stmt.executeUpdate("INSERT INTO `employeeaddressc` values('"+email+"','"+cAddressLine1+"','"+cAddressLine2+"','"+cCity+"','"+cState+"','"+cPincode+"','"+cLandmark+"')");
		 stmt.executeUpdate("INSERT INTO `employeeeducation` values('"+email+"','"+highSchool+"','"+intermediate+"','"+graduationCourse+"','"+graduationPercentage+"')");
		 stmt.executeUpdate("INSERT INTO `login` values('"+email+"','"+mobileNumber+"','employee','P')");
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

			 out.println("<html>");
			 out.println("<head>");
			 out.println("<title><link rel=\"stylesheet\" type=\"text/css\" href=\"CSS Files/login.css\"></title>");
			 out.println("</head>");
			 out.println("<body>");
			 out.print("<h1 id=\"infomain\"><b>Sign Up Successful!!!</b></h1>");
			 out.println("</body>");
			 out.println("</html>");
			 RequestDispatcher rd=request.getRequestDispatcher("../common/Login.jsp");
			 rd.forward(request,response);
			}
				else
				{
				 out.println("<html>");
				 out.println("<head>");
				 out.println("<title></title>");
				 out.println("</head>");
				 out.println("<body>");
				 out.print("<h1 id=\"infomain\"><b>Sorry! Sign Up Unsuccessfull</b></h1>");
				 out.println("</body>");
				 out.println("</html>");
				 RequestDispatcher rd=request.getRequestDispatcher("/");
				 rd.forward(request,response);
				}
%>