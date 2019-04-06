<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert new employee</title>
<script>

	function validate() {
		var empSIN = document.getElementById("empSIN");
		var empName = document.getElementById("empName");
		var empPwd = document.getElementById("empPwd");
		var empAddr = document.getElementById("empAddr");
		var empHotelAddr = document.getElementById("empHAddr");
		var empPos = document.getElementById("empPos");
		if(empSIN.value == "" || empName.value == "" || empPwd.value == "" || empAddr.value == "" || empHotelAddr.value == "" || empPos.value == "" ){
			alert("Please fill in all blanks!");
			return false;
		}
		
		else if(empSIN.value.length != 9){
			alert("The length of SIN needs to be 9!");
			return false;
		}
		
		else
			return true;
	}
</script>
</head>
<body>
<form method = "post" action="addEmployee">
please input the SIN:<input type="text" id="empSIN" name="empSIN"><br><br>
please input the name:<input type="text" id="empName" name="empName"><br><br>
please input the password:<input type="text" id="empPwd" name="empPwd"><br><br>
please input the home address:<input type="text" id="empAddr" name="empAddr"><br><br>
please input the hotel address:<input type="text" id="empHotelAddr" name="empHotelAddr"><br><br>
please input the position:<input type="text" id="empPos" name="empPos"><br><br>
<button type="submit" value="submit" onclick="return validate();">Insert</button>
<button type="reset" value="reset">reset</button>
</form>
</body>
</html>