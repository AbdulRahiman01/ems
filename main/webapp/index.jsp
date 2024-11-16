<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EMS</title>
</head>
<body>
	<h1>Welcome To EMS</h1>
	<a href="register.jsp"> <button>Click Here To Register</button></a>
	<a href="allemp"> <button>View All Employee</button></a>
	<script>
	 let msgEle = document.getElementById("msg");
	 
	 setTimeout(()=>{
		 msgEle.style.cssText ="display :none";
	 },3000)
	</script>
	
</body>
</html>