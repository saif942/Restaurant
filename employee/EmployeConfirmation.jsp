<html>
<head>
<title>Employe order confirmation</title>
<link rel="stylesheet" type="text/css" href="../css/employeconfirmation.css">
</head>


<body>
<%

    for(int orderId=100001;orderId>123;
	
		 try {
            String url = "jdbc:mysql://localhost:3306/restaurant";
 out.println("111111 ");
            Connection conn = DriverManager.getConnection(url,"root","");
			out.println("222222 ");
            Statement stmt = conn.createStatement();
			out.println("33333 ");
            ResultSet rs;
             rs = stmt.executeQuery("SELECT * FROM tables where Names='"+s1+"'");
			out.println(rs);
          while ( rs.next() ) {
               lastName = rs.getString("Names");
			 l1 = rs.getString("gender");
			 n1= rs.getString("agree");
			 m1= rs.getString("city");
               out.println(lastName);
          }
            conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
        }
%>

<!-- header part -->
<h1 id="title"><b><center>ORDER CONFIRMATION</center></b></h1>


<!-- Info part -->
<form action="CustomerSignUpPageButton.jsp">
<CENTER><H1>
 ORDER ID&nbsp;:
 <input type="text" name="firstName"  maxlength="20" value="" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </CENTER></H1>
<table>
<tr>
<tr><th id="infomain">CUSTOMER ID&nbsp;&nbsp;&nbsp;&nbsp;:</th><td>
<input type="text" name="firstName"  maxlength="20" value="" required></td>
<th id="infomain">CUSTOMER NAME&nbsp;:</th>
<td>
<input type="text" name="email"  maxlength="30" value="" required></td></tr>
<tr><th id="infomain">MOBILE NO&nbsp;&nbsp;&nbsp;&nbsp;:</th><td>
<input type="text" name="firstName"  maxlength="20" value="" required></td>
<th id="infomain">ADDRESS&nbsp;:</th>
<td>
<input type="text" name="email"  maxlength="30" value="" required></td></tr>
<th id="infomain">FOOD ORDERED&nbsp;:</th><td>

<TABLE style="width:100%">
<tr>
<th id="infomain">ITEM_ID</TH>
<th id="infomain">QUANTITY</TH>
<th id="infomain">AMOUNT</TH>
</TR>
</TABLE>
<tr><th id="infomain">SUB AMOUNT&nbsp;:</th><td>
<input type="text" id="password" name="password"  maxlength="25" value="" required></td></tr>
<td><TR><TH>
<input type="SUBMIT" id="password" name="password" maxlength="25" value="CONFIRM" required>&nbsp;&nbsp;&nbsp;
<input type="SUBMIT" id="password" name="password" maxlength="25" value="CANCEL" required></td></tr></TH>

</table>

</form>
</body>
</html>