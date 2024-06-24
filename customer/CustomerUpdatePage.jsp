<html>
<head>
<title>Customer Update Page</title>
<link rel="stylesheet" type="text/css" href="../css/update.css">
</head>
<body>

<!-- header part -->
<h1 id="title"><center>Login To Move Forward</center></h1>


<!-- Info part -->
<form action="CustomerUpdatePageButton.jsp">
<center>
<table>
<tr><th id="infomain">E-Mail Id*&nbsp;:</th><td><input type="text" name="email" maxlength="30" value="" required></td><tr>
<tr><th id="infomain">Password*&nbsp;:</th><td><input type="password" name="password" maxlength="30" value="" required></td><tr>
<tr><th id="infomain">Status*&nbsp;:</th><td><select name="status" required>
<option value="customer">Customer</option></select></td></tr>
</table>
<table>
<tr><td><a href="../common/homepage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
<td><input type="submit" name="button" value="Login" class="button"></td></tr>
</table>
<center>
</form>
</body>
</html>