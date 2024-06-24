<html>
<head>
<title>Customer Signup</title>
<link rel="stylesheet" type="text/css" href="../css/signup.css">
</head>


<body>


<!-- header part -->
<h1 id="title"><b><center>Customer Sign Up</center></b></h1>


<!-- Info part -->
<form action="CustomerSignUpPageButton.jsp">
<center>
<table>
<tr><th id="infohead">Name*</th></tr>
<tr><th id="infomain">First Name&nbsp;:</th><td><input type="text" name="firstName" placeholder="Enter Your First Name" maxlength="20" value="" required></td><th id=infomain>Last Name&nbsp;:</th><td><input type="text" name="lastName" placeholder="Enter Your Last Name" maxlength="20" value=""></td></tr>
<tr><th id="infomain">E-Mail Id*&nbsp;:</th><td><input type="email" name="email" placeholder="Enter Your E-Mail" maxlength="30" value="" required></td></tr>
<tr><th id="infomain">Password*&nbsp;:</th><td><input type="password" id="password" name="password" placeholder="Enter Your Password" maxlength="25" value="" required><td><input type="checkbox" onclick="myPassword()">Show</td></td></tr>
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
<tr><th id="infomain">Re-Enter Password*&nbsp;:</th><td><input type="password" id="repassword" name="repassword" placeholder="Re-Enter Your Password" maxlength="25" value="" required><td><input type="checkbox" onclick="myRepassword()">Show</td></td></tr>
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
<tr><th id="infomain">Gender*&nbsp;:</th><td>M<input type="radio" name="gender" value="M" required>F<input type="radio" name="gender" value="F" required></td></tr>
<tr><th id="infomain">Mobile Number*&nbsp;:</th><td><input type="number" name="mobileNumber" placeholder="Enter Your Mobile Number" value="" maxlength="10" required></td></tr>
<tr><th id="infomain">Alternative Mobile Number*&nbsp;:</th><td><input type="number" name="alternativeNumber" placeholder="Enter Your Alternative Number" value="" maxlength="10"></td></tr>
<tr><th id="infomain">Occupation*&nbsp;:</th><td><select name="occupation" required>
<option value="Government">Government Sector</option>
<option value="Private">Private Sector</option>
<option value="Student">Student</option>
<option value="Other">Other</option>
</select></td></tr>
<tr><th id="infomain">Aadhaar Id*&nbsp;:</th><td><input type="number" name="aadharId" placeholder="Enter Your Aadhaar Number" value="" maxlength="12" required></td></tr>
<tr><th id="infohead">Address*</th></tr>
<tr><th id="infomain">Address Line 1&nbsp;:</th><td><input type="text" name="addressLine1" placeholder="House No./Street/Local" maxlength="30" value="" required></td><th id=infomain>Address Line 2&nbsp;:</th><td><input type="text" name="addressLine2" placeholder="House No./Street/Local" maxlength="30" value=""></td></tr>
<tr><th id="infomain">City&nbsp;:</th><td><input type="text" name="city" placeholder="Enter Your City" maxlength="25" value="" required></td>
<th id=infomain>State&nbsp;:</th><td><select name="state" required>
<option value="">Select State</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
</select></td></tr>
<tr><th id="infomain">Pincode&nbsp;:</th><td><input type="number" name="pincode" placeholder="City Pincode" maxlength="6" value="" required></td></tr>
<tr><th id="infomain">Near Land Mark&nbsp;(Optional)&nbsp;:</th><td><input type="text" name="landmark" placeholder="Nearest Place" maxlength="30" value=""></td></tr>
</table>
<br><input type="checkbox" name="agree" required>&nbsp;By Creating An Account You Agree To Our<a href=""> Terms & Privacy*</a>
<br><br><br>
<table>
<tr><td><input type="reset" value="Reset" class="button"></td>
<td><a href="../common/Homepage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
<td><input type="submit" name="button" value="Submit" class="button"></td></tr>
</table>
	<div>
    <p>Already have an account? <a href="../common/LoginPage.jsp">Sign in</a></p>
	</div>
</center>
</form>
</body>
</html>