<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div {
	display: inline-block;
}

.column {
	float: left;
	width: 33.3333%;
	height: 300px;
}

p {
	font-size: 20px;
	font-weight: bold;
}
</style>


</head>
<body>
	<header>
		<center>
			<h1 style="color: green">C-Tel InfoSystems</h1>
			<h2 style="color: green">Welcome to your Dashboard</h2>
			<a href="userReg">Register</a>&nbsp;&nbsp;&nbsp;&nbsp; 
			<hr>
			<p></p>
		</center>
	</header>
	<h2>
		<a href="viewUser">View User Details</a>
	</h2>
	<h3>${msg}</h3>
	<footer>
		<div class="column">
			<ul>
				<li><a href="https://www.geeksforgeeks.org/about/">About Us</a></li>
				<li><a href="https://www.geeksforgeeks.org/privacy-policy/">Privacy
						Policy</a></li>
				<li><a href="https://www.geeksforgeeks.org/careers/">Careers</a></li>
			</ul>
		</div>

		<div class="column">
			<ul>
				<li><a href="https://www.google.com">Google</a></li>
				<li><a href="https://www.fb.com">Facebook</a></li>
				<li><a href="https://www.instagram.com/">Instagram</a></li>
			</ul>
		</div>

		<div class="column">
			<ul>
				<li><a href="https://www.youtube.com">Youtube</a></li>
				<li><a href="https://www.netflix.com">Netflix</a></li>
				<li><a href="https://www.amazon.com">Amazon</a></li>
			</ul>
		</div>
	</footer>

</body>
</html>