<%@page import="java.sql.*"
%>
<%
	try 
  	{
   	 String url = "jdbc:mysql://localhost:3306/example";
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = DriverManager.getConnection(url,"root","");
     Statement stmt = conn.createStatement();
     ResultSet rs;
	  java.util.Date date = new java.util.Date();
	  java.sql.Date sqlDate = new java.sql.Date(date.getTime());
 	 stmt.executeUpdate("INSERT into `datecheck` values('"+sqlDate+"')");
     conn.close();		
	}
    	catch (Exception e) 
    	{
     	 out.println("Got an exception!");
       	 out.println(e);
    	}
%>