<html>
<head>
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="CSS Files/login.css">
</head>
<body>

<!-- header part -->
<h1 id="title"><center>Admin Login</center></h1>


<!-- Info part -->
<form action="http://localhost:8080/examples/AdminLoginPageButton.jsp">
<center>
<table>
<tr><th id="infomain">E-Mail Id*&nbsp;:</th><td><input type="text" name="email" maxlength="30" value="" required></td><tr>
<tr><th id="infomain">Password*&nbsp;:</th><td><input type="Password" name="password" maxlength="30" value="" required></td><tr>
</table>
<table>
<tr><td><a href="http://localhost:8080/examples/Homepage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
<td><input type="submit" name="button" value="Login" class="button"></td></tr>
</table>
<center>
</form>
</body>
</html>