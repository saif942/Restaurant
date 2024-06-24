<%@page import="java.sql.*"%>

<%
	String addingId=(String)session.getAttribute("email");
	String categoryId=request.getParameter("categoryId");
	String categoryName=request.getParameter("categoryName");
	java.util.Date date = new java.util.Date();
	java.sql.Date addingDate = new java.sql.Date(date.getTime());
	String status=request.getParameter("status");
	String description=request.getParameter("description");
	
	try 
	{
	 Class.forName("com.mysql.jdbc.Driver");
	 String url = "jdbc:mysql://localhost:3306/restaurant";
	 Connection conn = DriverManager.getConnection(url,"root","");
	 Statement  stmt = conn.createStatement();
	 ResultSet rs;
	 stmt.executeUpdate("INSERT INTO `foodcategory` (`category_id`, `category_name`, `adding_id`, `adding_date`, `description`, `status`) VALUES ('"+categoryId+"', '"+categoryName+"', '"+addingId+"', '"+addingDate+"', '"+description+"', '"+status+"')");
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
	<title>Food Category Entered</title>
	<link rel="stylesheet" type="text/css" href="../css/foodentry.css">
	</head>
	<body>
	
	<!-- Info part -->
	<form action="FoodCategoryEntryPage.jsp">
	<center>
	<h1 id="infohead">Food Category Entered!!!</h1>
	<table>
	<tr><td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Profile Page" class="button"></td>
	<td><input type="submit" name="button" value="Add Another" class="button"></td></tr>
	</table>
	</center>
	</form>
	</body>
	</html>