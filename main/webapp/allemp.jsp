<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee Page</title>

<style>
</style>
</head>
<body>
	<h1>All Employee</h1>
	<a href="register.jsp" id ="btn">  <button>Create</button></a>
	<a href="logout">  <button>Logout</button></a>
	<table  border="3"  style="border-collapse:collapse" cellpadding="10"  align="center">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Salary</th>
			<th>Deptno</th>
			<th>Password</th>
			<th colspan="2">Action</th>
		</tr>



		<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getDouble(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td>  <a href="delete?id=<%=rs.getInt(1)%>"><button>Delete</button></a></td>
			<td>  <a href="updatepage?id=<%=rs.getInt(1)%>" ><button>Update</button></a></td>
		</tr>
		<%
		}
		%>
	</table>
	<script> 
	 let msgEle = document.getElementById('del');
	 
	 setTimeout(()=>{
		 msgEle.style.cssText ="display :none";
	 },3000)
	 </script>
</body>
</html>