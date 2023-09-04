<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>User Registration Form</h1>
<form action="saveUser" modelAttribute="saveUser" method="post">
First Name: <input type="text" name="firstname"><br>
Last Name: <input type="text" name="lastname"><br>
Username: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>
Email: <input type="email" name="email"><br>
Address: <input type="text" name="address"><br>
Phone No: <input type="tel" name="phone"><br>
<input type="submit" value="Submit">&emsp;&emsp;&emsp;&emsp;
<a href="login">Login</a>
</form>
</center>
</body>
</html>
