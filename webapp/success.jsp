<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"><link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<title>Update Success</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.container {
	background-color: #ffffff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	max-width: 90%;
	width: 400px;
}

h1 {
	color: #4CAF50;
	margin-bottom: 20px;
}

p {
	margin: 10px 0;
}

strong {
	font-weight: bold;
	color: #333;
}

@media ( max-width : 768px) {
	.container {
		width: 90%;
		padding: 20px;
	}
}

#sub {
	margin-top:15px;
}

</style>
</head>
<body>
	<div class="container">
		<h1><%=session.getAttribute("us")%>'s Details Updated
			Successfully
		</h1>
		<p>
			<strong>Username:</strong>
			<%=session.getAttribute("us")%></p>
		<p>
			<strong>Password:</strong>
			<%=session.getAttribute("ps")%></p>
		<p>
			<strong>Email:</strong>
			<%=session.getAttribute("ema")%></p>
		<p>
			<strong>Phone Number:</strong>
			<%=session.getAttribute("phone")%></p>
		<form action="delete" method="post">
			<input type="hidden" name="username"
				value="<%=session.getAttribute("us")%>">
			<button type="submit" class="btn btn-danger">Delete</button>
		</form>
		<a href="login.jsp"><button class="btn btn-primary" id="sub">Login</button></a>
	</div>
</body>
</html>

