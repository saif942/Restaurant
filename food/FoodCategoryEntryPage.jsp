<html>
<head>
<title>Food Category Entry</title>
<link rel="stylesheet" type="text/css" href="../css/foodentry.css">
</head>


<body>


<!-- header part -->
<h1 id="title"><b><center>Food Category Entry</center></b></h1>


<!-- Info part -->
<form action="FoodCategoryEntryPageButton.jsp">
<center>
<table>
<tr><th id="infomain">Food Category Id*&nbsp;:</th><td><input type="text" name="categoryId" value="" placeholder="Enter Food Category Id" maxlength="10" required></td></tr>
<tr></tr>
<tr><th id="infomain">Food Category Name*&nbsp;:</th><td><input type="text" name="categoryName" value="" placeholder="Enter Food Category Name" maxlength="30" required></td></tr>
<tr></tr>
<tr><th id="infomain">Status*&nbsp;:</th><td><select name="status" required>
<option value="A">Active</option></select></td></tr>
<tr></tr>
<tr><th id="infomain">Description&nbsp;:</th><td><textarea id="infodescription" name="description" value="" maxlength="50" placeholder="Enter Description About Category"></textarea></td></tr>
</table>
<br>
<table>
<tr><td><input type="reset" value="Reset" class="button"></td>
<td><a href="../employee/EmployeeProfilePage.jsp"><input type="button" name="button" value="Cancel" class="button"></td>
<td><input type="submit" name="button" value="Submit" class="button"></td></tr>
</table>
</center>
</form>
</body>
</html>