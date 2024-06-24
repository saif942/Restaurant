<html>
<head>
<title>Employee Signup</title>
<link rel="stylesheet" type="text/css" href="../css/signup.css">
</head>

<body>


<!-- header part -->
<h1 id="title"><b><center>Employee Sign Up</font></center></b></h1>

<form action="EmployeeSignUpPageButton.jsp">

<!-- Info part -->
<center>
<table>
<tr><th id=infohead>Name*</th></tr>
<tr><th id=infomain>First Name&nbsp;:</th><td><input type="text" name="firstName" placeholder="Enter Your First Name" maxlength="20" value="" required></td><th id=infomain>Last Name&nbsp;:</th><td><input type="text" name="lastName" placeholder="Enter Your Last Name" maxlength="20" value=""></td></tr>
<tr><th id=infomain>E-Mail Id*&nbsp;:</th><td><input type="email" name="email" placeholder="Enter Your E-Mail" value="" required></td></tr>
<tr><th id=infomain>Gender*&nbsp;:</th><td>M<input type="radio" name="gender" value="M" required>F<input type="radio" name="gender" value="F" required></td></tr>
<tr><th id=infomain>Mobile Number*&nbsp;:</th><td><input type="number" name="mobileNumber" placeholder="Enter Your Mobile Number" value="" maxlength="10" required></td></tr>

<tr><th id=infomain>Designation*&nbsp;:</th><td><select name="designation" required>
<option value="Manager">Manager</option>
<option value="Employee">Employee</option>
<option value="Other">Other</option></select></td></tr>

<tr><th id=infomain>Aadhaar Number*&nbsp;:</th><td><input type="number" name="aadhaarId" placeholder="Enter Your Aadhaar Number" value="" maxlength="12" required></td></tr>

<tr><th id=infohead>Permanent Address*</th></tr>
<tr><th id=infomain>Address Line 1&nbsp;:</th><td><input type="text" name="addressLine1" placeholder="House No./Street/Local" maxlength="30" value="" required></td><th id=infomain>Address Line 2&nbsp;:</th><td><input type="text" name="addressLine2" placeholder="House No./Street/Local" maxlength="30" value=""></td></tr>
<tr><th id=infomain>City&nbsp;:</th><td><input type="text" name="city" placeholder="Enter Your City" maxlength="20" value="" required></td><th id=infomain>State&nbsp;:</th><td><input type="text" name="state" placeholder="Enter Your State" maxlength="30" value="" required></td></tr>
<tr><th id=infomain>Pincode&nbsp;:</th><td><input type="number" name="pincode" placeholder="City Pincode" maxlength="10" value="" required></td></tr>
<tr><th id=infomain>Near Land Mark&nbsp;(Optional)&nbsp;:</th><td><input type="text" name="landmark" placeholder="Nearest Place" maxlength="30" value=""></td></tr>

<tr><th id=infohead>Communication Address*</th></tr>
<tr><th id=infomain>Address Line 1&nbsp;:</th><td><input type="text" name="cAddressLine1" placeholder="House No./Street/Local" maxlength="30" value="" required></td><th id=infomain>Address Line 2&nbsp;:</th><td><input type="text" name="cAddressLine2" placeholder="House No./Street/Local" maxlength="30" value=""></td></tr>
<tr><th id=infomain>City&nbsp;:</th><td><input type="text" name="cCity" placeholder="Enter Your City" maxlength="20" value="" required></td><th id=infomain>State&nbsp;:</th><td><input type="text" name="cState" placeholder="Enter Your State" maxlength="30" value="" required></td></tr>
<tr><th id=infomain>Pincode&nbsp;:</th><td><input type="number" name="cPincode" placeholder="City Pincode" maxlength="10" value="" required></td></tr>
<tr><th id=infomain>Near Land Mark&nbsp;(Optional)&nbsp;:</th><td><input type="text" name="cLandmark" placeholder="Nearest Place" maxlength="30" value=""></td></tr>

<tr><th id=infohead>Qualification*</th></tr>
<tr><th id=infomain>( Don't Use Percentage(%) Sign )</th></tr>
<tr><th id=infomain>High School&nbsp;:</th><td><input type="number" name="highSchool" placeholder="Enter your percentage" min="1" max="100" maxlength="5" value="" required></td><th id=infomain>Intermediate&nbsp;:</th><td><input type="number" name="intermediate" placeholder="Enter your percentage" min="1" max="100" maxlength="5" value=""></td></tr>
<tr><th id=infomain>Graduation Course&nbsp;:</th><td><input type="text" name="graduationCourse" placeholder="Enter Your Course" maxlength="20" value="" required></td><th id=infomain>Graduation Percentage&nbsp;:</th><td><input type="number" name="graduationPercentage" placeholder="Enter Your percentage" maxlength="5" value="" required></td></tr>
</table>
<br><input type="checkbox" name="agree" required>&nbsp;By Creating An Account You Agree To Our <font color="blue"> Terms & Privacy*
<br><br><br>
<table>
<tr><td><input type="reset" value="Reset" class="button"></td>
<td><a href="../common/Homepage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
<td><input type="submit" name="button" value="Submit" class="button"></td></tr>
</table>
</center>
</form>
</body>
</html>