<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%
		ResultSet rs = (ResultSet)request.getAttribute("rs");
	
	
	%>

	<h1>Update Page</h1>
		<div class="container">
		<h1>Fill the form to Update</h1>
		<form action="update" method="post">
			<div class="user">
				<input type="number"  value  =" <%= rs.getInt(1) %>" name="id" placeholder="Enter  New Id" />
			</div>

			<div class="password">
				<input type="text"   value  ="<%= rs.getString(2) %>" name="fname" placeholder="Enter New Full Name" />
			</div>
			<div class="user">
				<input type="tel" value  ="<%= rs.getString(3) %>" name="email" placeholder="Enter  New Email" />
			</div>
			<div class="user">
				<input type="number"  value  ="<%= rs.getDouble(4) %>" name="salary" placeholder="Enter New Salary" />
			</div>
			<div class="user">
				<input type="tel"  value  ="<%= rs.getInt(5) %>" name="deptno" placeholder="Enter  New Deptno" />
			</div>

			<div class="password">
				<input type="password" value  ="<%= rs.getString(6) %>" name="pswd" placeholder=" Enter  New Password" />
			</div>

			<button type="submit">Update</button>

		</form>
	</div>
</body>
</html>