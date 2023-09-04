<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Edit User</h1>
		<form:form method="POST" action="/editSave">
			<table>
				<tr>
					<td></td>
					<td><form:hidden path="phone" /></td>
				</tr>
				<tr>
					<td>Firstname :</td>
					<td><form:input path="firstname" /></td>
				</tr>
				<tr>
					<td>Lastname :</td>
					<td><form:input path="lastname" /></td>
				</tr>
				<tr>
					<td>Username :</td>
					<td><form:input path="username" /></td>
				</tr>
				<tr>
					<td>E-Mail :</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><form:input path="password" /></td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Edit Save" /></td>
				</tr>
			</table>
		</form:form>
	</center>

</body>
</html>
