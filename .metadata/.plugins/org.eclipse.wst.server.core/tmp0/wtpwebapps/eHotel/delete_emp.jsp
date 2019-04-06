<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete an employee</title>
<script>

	function validate() {
		var empSin = document.getElementById("empSin");
		if(empSin.value == ""){
			alert("The user SIN can't be null!");
			return false;
		}

		else
			return true;
	}
</script>
</head>
<body>
<form method = "post" action="deleteEmployee">
please input the SIN:<input type="text" id="empSIN" name="empSIN"><br><br>

<button type="submit" value="submit" onclick="return validate();">Delete</button>
<button type="reset" value="reset">reset</button>
</form>
</body>
</html>