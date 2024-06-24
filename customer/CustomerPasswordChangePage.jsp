<html>
<head>
<title>Customer Password Change</title>
<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>

<!-- header part -->
<h1 id="title"><center>Login To Move Forward</center></h1>


<!-- Info part -->
<form action="CustomerPasswordChangePageButton.jsp">
<center>
<table>
<tr><th id="infomain">E-Mail Id*&nbsp;:</th><td><input type="text" name="email" maxlength="30" value="" required></td><tr>
<tr><th id="infomain">Password*&nbsp;:</th><td><input type="password" id="password" name="password" maxlength="30" value="" required><td><input type="checkbox" onclick="myPassword()">Show</td></td><tr>
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
<tr><th id="infomain">Type*&nbsp;:</th><td><select name="type" required>
<option value="customer">Customer</option>
</select></td></tr>
</table>
<table>
<tr><td><a href="CustomerProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
<td><input type="submit" name="button" value="Login" class="button"></td></tr>
</table>
<center>
</form>
</body>
</html>