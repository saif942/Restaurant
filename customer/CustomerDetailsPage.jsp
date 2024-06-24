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
	 
	 String firstName=new String("");
	 String lastName=new String("");
	 String email=new String("");
	 String password=new String("");
	 String gender=new String("");
	 String mobileNumber=new String("");
	 String alternativeNumber=new String("");
	 String occupation=new String("");
	 String aadharId=new String("");
	 String addressLine1=new String("");
	 String addressLine2=new String("");
	 String city=new String("");
	 String state=new String("");
	 String pincode=new String("");
	 String landmark=new String("");
	
	 boolean b1=false;
	 boolean b2=false;
		try 
  		{
   		 String url = "jdbc:mysql://localhost:3306/restaurant";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn = DriverManager.getConnection(url,"root","");
         Statement stmt = conn.createStatement();
         ResultSet rs;
 		 rs = stmt.executeQuery("SELECT * FROM `customerinfo` WHERE email='"+emailr+"'");
		 while ( rs.next() )
			{
             firstName=rs.getString("first_name");
			 lastName=rs.getString("last_name");
			 email=rs.getString("email");
			 gender=rs.getString("gender");
			 mobileNumber=rs.getString("mobile_number");
			 alternativeNumber=rs.getString("alternative_number");
			 occupation=rs.getString("occupation");
			 aadharId=rs.getString("aadhar_id");
			 b1=true;
			}
		 rs = stmt.executeQuery("SELECT * FROM `customeraddress` WHERE email='"+emailr+"'");
		 while ( rs.next() )
            {
             addressLine1=rs.getString("address_line1");
			 addressLine2=rs.getString("address_line2");
			 city=rs.getString("city");
			 state=rs.getString("state");
			 pincode=rs.getString("pincode");
			 landmark=rs.getString("landmark");
			 b2=true;
			}
         conn.close();		
		}
        		catch (Exception e) 
        		{
        	 	 out.println("Got an exception!");
            	 out.println(e);
        		}
	
	
%>

		<%if(b1&&b2)
		{
		%>
		 <html>
		 <head>
		 <title>Customer Update</title>
		 <link rel="stylesheet" type="text/css" href="CSS Files/update.css">
		 </head>


		 <body>


		 <!-- header part -->
		 <h1 id="title"><b><center>Customer Details</font></center></b></h1>


		 <!-- Info part -->
		 <form action="CustomerDetailsPageButton.jsp">
		 <center>
		 <table>
		 <tr><th id="infohead">Name*</th></tr>
		 <tr><th id="infomain">First Name&nbsp;:</th><td><input type="text" name="firstName" placeholder="Enter Your First Name" maxlength="20" value="<%=firstName%>" required></td><th id=infomain>Last Name&nbsp;:</th><td><input type="text" name="lastName" placeholder="Enter Your Last Name" maxlength="20" value="<%=lastName%>"></td></tr>
		 <tr><th id="infomain">E-Mail Id*&nbsp;:</th><td><input type="email" name="email" placeholder="Enter Your E-Mail" maxlength="30" value="<%=email%>" required></td></tr>
 	
		 <%if(gender.equals("M") || gender.equals("m"))
			{
		 %>
			 <tr><th id="infomain">Gender*&nbsp;:</th><td>M<input type="radio" name="gender" value="<%=gender%>" checked>F<input type="radio" name="gender" value="F" required></td></tr>
			<%
			}
				else
				{
			%>
				 <tr><th id="infomain">Gender*&nbsp;:</th><td>M<input type="radio" name="gender" value="M">F<input type="radio" name="gender" value="<%=gender%>" checked></td></tr>
				<%
				}
				%>
	
		 <tr><th id="infomain">Mobile Number*&nbsp;:</th><td><input type="number" name="mobileNumber" placeholder="Enter Your Mobile Number" value="<%=mobileNumber%>" maxlength="10" required></td></tr>
		 <tr><th id="infomain">Alternative Mobile Number*&nbsp;:</th><td><input type="number" name="alternativeNumber" placeholder="Enter Your Alternative Number" value="<%=alternativeNumber%>" maxlength="10"></td></tr>
	
		 <tr><th id="infomain">Occupation*&nbsp;:</th><td><select name="occupation" required>
	
		 <%if(occupation.equals("Government"))
		 {
		 %>
		 <option value="<%=occupation%>">Government Sector</option>
		 <option value="Private">Private Sector</option>
		 <option value="Student">Student</option>
		 <option value="Other">Other</option></select></td></tr>
			<%
		 }
			else if(occupation.equals("Private"))
			{
			%>
			<option value="Government">Government Sector</option>
			<option value="<%=occupation%>">Private Sector</option>
			<option value="Student">Student</option>
			<option value="Other">Other</option></select></td></tr>
				<%
			}
				else if(occupation.equals("Student"))
				{
				%>
				<option value="Government">Government Sector</option>
				<option value="Private">Private Sector</option>
				<option value="<%=occupation%>">Student</option>
				<option value="Other">Other</option></select></td></tr>
					<%
				}
					else
					{
					%>
					<option value="Government">Government Sector</option>
					<option value="Private">Private Sector</option>
					<option value="Student">Student</option>
					<option value="<%=occupation%>">Other</option></select></td></tr>
						<%
					}
						%>
	
		 <tr><th id="infomain">Aadhaar Id*&nbsp;:</th><td><input type="number" name="aadharId" placeholder="Enter Your Aadhaar Number" value="<%=aadharId%>" maxlength="12" required></td></tr>
		 <tr><th id="infohead">Address*</th></tr>
		 <tr><th id="infomain">Address Line 1&nbsp;:</th><td><input type="text" name="addressLine1" placeholder="House No./Street/Local" maxlength="30" value="<%=addressLine1%>" required></td><th id=infomain>Address Line 2&nbsp;:</th><td><input type="text" name="addressLine2" placeholder="House No./Street/Local" maxlength="30" value="<%=addressLine2%>"></td></tr>
		 <tr><th id="infomain">City&nbsp;:</th><td><input type="text" name="city" placeholder="Enter Your City" maxlength="25" value="<%=city%>" required></td><th id=infomain>State&nbsp;:</th><td><input type="text" name="state" placeholder="Enter Your State" maxlength="30" value="<%=state%>" required></td></tr>
		 <tr><th id="infomain">Pincode&nbsp;:</th><td><input type="number" name="pincode" placeholder="City Pincode" maxlength="6" value="<%=pincode%>" required></td></tr>
		 <tr><th id="infomain">Near Land Mark&nbsp;(Optional)&nbsp;:</th><td><input type="text" name="landmark" placeholder="Nearest Place" maxlength="30" value="<%=landmark%>"></td></tr>
		 </table>
		 <br><input type="checkbox" name="agree" required>&nbsp;By Creating An Account You Agree To Our <font color="blue"> Terms & Privacy*
		 <br><br><br>
		 <table>
		 <tr><td><input type="reset" value="Reset" class="button"></td>
		 <td><a href="CustomerProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
		 <td><input type="submit" name="button" value="Update" class="button"></td></tr>
		 </table>
		 </center>
		 </form>
		 </body>
		 </html>

		<% 
		}

	}
	%>