<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>
<link rel="stylesheet" href="style.css">
	
</head>
<body>
	<a href="allemp.jsp">  <button>View Data</button></a>
	<div class="container">
		<h1>Fill the form to register</h1>
		<form action="reg">
			<div class="user">
				<input type="number" name="id" placeholder="Enter Id" />
			</div>

			<div class="password">
				<input type="text" name="fname" placeholder="Enter Full Name" />
			</div>
			<div class="user">
				<input type="tel" name="email" placeholder="Enter Email" />
			</div>
			<div class="user">
				<input type="number" name="salary" placeholder="Enter Salary" />
			</div>
			<div class="user">
				<input type="tel" name="deptno" placeholder="Enter Deptno" />
			</div>

			<div class="password">
				<input type="password" name="pswd" placeholder=" Enter Password" />
			</div>

			<button type="submit">Register</button>

		</form>
	</div>

</body>
</html>