<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check in Page</title>
<script>

	function validate() {
		var uname = document.getElementById("uname");
		if(uname.value == ""){
			alert("The userSIN can't be null!");
			return false;
		}
		else
			return true;
	}

</script>
</head>
<body>
Hi there, please ask customer for user SIN.
<br>
	<form method="post" action="">
		user SIN:<input type="text" id="uname" name="userSIN"><br>
		<br>
		<button type="submit" value="submit" onclick="return validate();">submit</button>
		<button type="reset" value="reset">reset</button>
	</form>
</body>
</html>