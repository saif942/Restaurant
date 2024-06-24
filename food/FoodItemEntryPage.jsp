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
	<html>
	<head>
	<title>Food Items Entry</title>
	<link rel="stylesheet" type="text/css" href="../css/foodentry.css">
	</head>

	<body>


	<!-- header part -->
	<h1 id="title"><b><center>Select Category Of Food Item To Enter</center></b></h1>

	
	<!-- Info part -->
	<form action="FoodItemEntryPageButton.jsp">
	<center>
	<table>
	<tr><th id="infomain">Category Type*&nbsp;:</th><td><select name="categoryName" required>
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
	<tr></tr>
	<tr><th id="infohead">Select The Attributes For Food Item*</th></tr>
	<tr><th id="infomain">Size&nbsp;:</th><td>Yes<input type="radio" name="size" value="Y" required>No<input type="radio" name="size" value="N" required></td></tr>
	<tr><th id="infomain">Quantity&nbsp;:</th><td>Yes<input type="radio" name="quantity" value="Y" required>No<input type="radio" name="quantity" value="N" required></td></tr>
	<tr><th id="infomain">Weight&nbsp;:</th><td>Yes<input type="radio" name="weight" value="Y" required>No<input type="radio" name="weight" value="N" required></td></tr>
	</table>
	<br>
	<table>
	<tr><td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
	<td><input type="submit" name="button" value="Submit" class="button"></td></tr>
	</table>
	</center>
	</form>
	</body>
	</html>