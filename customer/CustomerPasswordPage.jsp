<%@page session="false"%>
<%
	HttpSession session = request.getSession(false);
	if(session==null)
	{
	 out.println("The Session You Are Looking For Is Expired");
	 RequestDispatcher rd=request.getRequestDispatcher("LoginPage.jsp");
	 rd.include(request,response);
	}
	else
	{
		
	 String email=(String)session.getAttribute("email");
	 String password=(String)session.getAttribute("password");
	 String acctype=request.getParameter("type");
%>
	 <html>
	 <head>
	 <title>Change Password</title>
	 <link rel="stylesheet" type="text/css" href="../css/login.css">
	 </head>
	 <body>

	 <!-- header part -->
	 <h1 id="title"><center>Enter Your New Password</center></h1>

	 <!-- Info part -->
	 <form action="CustomerPasswordPageButton.jsp">
	 <center>
	 <table>
	 <tr><th id="infomain">Old Password*&nbsp;:</th><td><input type="password" id="oldpassword" name="oldPassword" maxlength="30" value="<%=password%>" required><td><input type="checkbox" onclick="myOldpassword()">Show</td></td><tr>
	 <script>
	 function myOldpassword()
	 {
	 var z = document.getElementById("oldpassword");
		if (z.type === "password")
		{
		 z.type = "text";
		}
			else 
			{
			 z.type = "password";
			}
	 }
	 </script>
	 <tr><th id="infomain">New Password*&nbsp;:</th><td><input type="password" id="password" name="newPassword" maxlength="30" value="" required><td><input type="checkbox" onclick="myPassword()">Show</td></td><tr>
	 <script>
	 function myPassword()
	 {
	 var x = document.getElementById("password");
		if (x.type === "password")
		{
		 x.type = "text";
		}
			else 
			{
			 x.type = "password";
			}
	 }
	 </script>
	 <tr><th id="infomain">Re-Enter New Password*&nbsp;:</th><td><input type="password" id="repassword" name="rePassword" maxlength="30" value="" required><td><input type="checkbox" onclick="myRepassword()">Show</td></td><tr>
	 <script>
	 function myRepassword()
	 {
	 var y = document.getElementById("repassword");
		if (y.type === "password")
		{
		 y.type = "text";
		}
			else 
			{
			 y.type = "password";
			}
	 }
	 </script>
	 <tr><th id="infomain">Type*&nbsp;:</th><td><select name="type" required>
	 <option value="<%=acctype%>">Customer</option></select></td></tr>
	 </table>
	 <table>
	 <tr><td><a href="CustomerProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
	 <td><input type="submit" name="button" value="Submit" class="button"></td></tr>
	 </table>
	 <center>
	 </form>
	 </body>
	 </html>
	<%
	}
	%>