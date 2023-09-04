<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Users List</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>phone</th>
			<th>firstname</th>
			<th>lastname</th>
			<th>username</th>
			<th>email</th>
			<th>address</th>
		</tr>
		<c:forEach var="user" items="${list}">
			<tr>
				<td>${user.phone}</td>
				<td>${user.firstname}</td>
				<td>${user.lastname}</td>
				<td>${user.username}</td>
				<td>${user.email}</td>
				<td>${user.address}</td>
				<td><a href="userEditForm/${user.phone}">Edit</a></td>
				<td><a href="deleteUser/${user.phone}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="userReg">Add New Employee</a>
</body>
</html>