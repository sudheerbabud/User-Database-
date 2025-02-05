<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Registration Page</title>
		<style type="text/css">
			body {
				margin: 0;
				padding: 0;
				display: flex;
				justify-content: center;
				align-items: center;
				min-height: 100vh;
				background-color: #f4f4f9;
				font-family: 'Arial', sans-serif;
			}

			.box {
				width: 100%;
				max-width: 500px;
				padding: 30px;
				background-color: #ffffff;
				border-radius: 12px;
				box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
				transition: box-shadow 0.3s ease-in-out;
			}

			.box:hover {
				box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
			}

			.inp { 
				width: 100%;
				max-width: 300px;
				margin: 0 auto;
				color: #555;
			}

			.reg {
				text-align: center;
			}

			h1 {
				text-align: center;
				color: #28a745;
				margin-bottom: 30px;
			}

			input {
				width: 100%;
				height: 45px;
				border-radius: 25px;
				padding-left: 20px;
				margin-bottom: 15px;
				box-sizing: border-box;
				font-size: 16px;
				border: 1px solid #ddd;
				transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease;
			}

			input:focus {
				background-color: #fce4e4;
				border-color: #f44336;
				box-shadow: 0 0 10px rgba(244, 67, 54, 0.2);
				outline: none;
			}

			input:valid {
				background-color: #d8f9d3;
				border-color: #4caf50;
				box-shadow: 0 0 10px rgba(76, 175, 80, 0.2);
			}

			/* New styles for the submit button */
			#sub {
				width: 50%; /* Set width to 50% of input fields */
				padding: 15px 20px;
				background-color: #28a745;
				border: none;
				border-radius: 25px;
				color: white;
				font-size: 18px; /* Slightly bigger font size */
				cursor: pointer;
				margin: 20px auto;
				display: block;
				transition: background-color 0.3s ease;
			}

			#sub:hover {
				background-color: #218838;
			}

			p.error {
				color: red;
				font-size: 14px;
				margin-bottom: 15px;
			}

			/* Error message display styles */
			.error-message {
				font-size: 14px;
				color: #f00;
				text-align: center;
				margin-top: 20px;
				position: absolute;
				bottom: 20px;
				width: 100%;
			}

			/* Responsive Design */
			@media screen and (max-width: 480px) {
				.box {
					padding: 20px;
				}
				input {
					height: 40px;
				}
				#sub {
					height: 35px;
				}
			}

			@media screen and (min-width: 481px) and (max-width: 768px) {
				.box {
					max-width: 400px;
				}
			}
		</style>
	</head>
	<body>
		<div class="box">
			<form name="registration" method="post" onsubmit="return verify();" action="register">
				<h1 class="reg">Registration Form</h1>
				<div class="inp">
					<input type="text" name="username" id="username" placeholder="USERNAME" onfocus="clearError('fnerror1')" onblur="validateUsername()">
					<p id="fnerror1"></p>
					
					<input type="password" name="password" id="password" placeholder="PASSWORD" onfocus="clearError('fnerror2')" onblur="validatePassword()">
					<p id="fnerror2"></p>
					
					<input type="password" name="repassword" id="repassword" placeholder="CONFIRM PASSWORD" onfocus="clearError('fnerror3')" onblur="validateRepassword()">
					<p id="fnerror3"></p>
					
					<input type="email" name="email" id="email" placeholder="EMAIL" onfocus="clearError('fnerror4')" onblur="validateEmail()">
					<p id="fnerror4"></p>
				
					<input type="tel" name="phonenumber" id="phonenumber" placeholder="PHONE NUMBER" onfocus="clearError('fnerror5')" onblur="validatePhoneNumber()">
					<p id="fnerror5"></p>
					
					<button type="submit" id="sub">SUBMIT</button>
				</div>
			</form>
		</div>

		<div id="error-message" class="error-message" style="display:none;">
			<p id="error-text"></p>
		</div>

		<script>
			let usernameValid = false;
			let passwordValid = false;
			let repasswordValid = false;
			let emailValid = false;
			let phoneNumberValid = false;

			function clearError(errorId) {
				document.getElementById(errorId).innerHTML = "";
			}

			function validateUsername() {
				const username = document.getElementById("username").value.trim();
				if (!username) {
					document.getElementById("fnerror1").innerHTML = "*Username is required";
					document.getElementById("fnerror1").style.color = "red";
					usernameValid = false;
				} else {
					document.getElementById("fnerror1").innerHTML = "";
					usernameValid = true;
				}
			}

			function validatePassword() {
				const password = document.getElementById("password").value.trim();
				if (!password) {
					document.getElementById("fnerror2").innerHTML = "*Password is required";
					document.getElementById("fnerror2").style.color = "red";
					passwordValid = false;
				} else {
					document.getElementById("fnerror2").innerHTML = "";
					passwordValid = true;
				}
			}

			function validateRepassword() {
				const password = document.getElementById("password").value.trim();
				const repassword = document.getElementById("repassword").value.trim();
				if (!repassword) {
					document.getElementById("fnerror3").innerHTML = "*Please confirm password";
					document.getElementById("fnerror3").style.color = "red";
					repasswordValid = false;
				} else if (password !== repassword) {
					document.getElementById("fnerror3").innerHTML = "*Passwords do not match";
					document.getElementById("fnerror3").style.color = "red";
					repasswordValid = false;
				} else {
					document.getElementById("fnerror3").innerHTML = "*Passwords match";
					document.getElementById("fnerror3").style.color = "green";
					repasswordValid = true;
				}
			}

			function validateEmail() {
				const email = document.getElementById("email").value.trim();
				const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
				if (!email) {
					document.getElementById("fnerror4").innerHTML = "*Email is required";
					document.getElementById("fnerror4").style.color = "red";
					emailValid = false;
				} else if (!emailRegex.test(email)) {
					document.getElementById("fnerror4").innerHTML = "*Invalid email format";
					document.getElementById("fnerror4").style.color = "red";
					emailValid = false;
				} else {
					document.getElementById("fnerror4").innerHTML = "";
					emailValid = true;
				}
			}

			function validatePhoneNumber() {
				const phoneNumber = document.getElementById("phonenumber").value.trim();
				if (!phoneNumber) {
					document.getElementById("fnerror5").innerHTML = "*Phone number is required";
					document.getElementById("fnerror5").style.color = "red";
					phoneNumberValid = false;
				} else if (phoneNumber.length < 10) {
					document.getElementById("fnerror5").innerHTML = "*Invalid phone number";
					document.getElementById("fnerror5").style.color = "red";
					phoneNumberValid = false;
				} else {
					document.getElementById("fnerror5").innerHTML = "";
					phoneNumberValid = true;
				}
			}

			function verify() {
				validateUsername();
				validatePassword();
				validateRepassword();
				validateEmail();
				validatePhoneNumber();

				if (usernameValid && passwordValid && repasswordValid && emailValid && phoneNumberValid) {
					return true; 
				} else {
					alert("Please resolve the errors before submitting.");
					return false;
				}
			}


			window.onload = function() {
				const errorMessage = "<%= session.getAttribute("errorMessage") != null ? session.getAttribute("errorMessage") : "" %>";
				if (errorMessage) {
					document.getElementById("error-message").style.display = "block";
					document.getElementById("error-text").innerText = errorMessage;
				}
			};
		</script>
	</body>
</html>
