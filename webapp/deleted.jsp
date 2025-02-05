<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details Deleted</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style type="text/css">
    body {
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
        font-family: 'Arial', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }

    .container {
        text-align: center;
        padding: 40px;
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        width: 80%;
    }

    h1 {
        color: #28a745;
        font-size: 28px;
        margin-bottom: 20px;
    }

    a {
        text-decoration: none;
    }

    .btn-custom {
        width: 50%;
        padding: 15px 20px;
        background-color: #28a745;
        color: white;
        font-size: 16px;
        border-radius: 25px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        border: none;
        margin-top: 30px;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    /* Responsive Design */
    @media screen and (max-width: 480px) {
        h1 {
            font-size: 24px;
        }

        .btn-success {
            width: 80%;
        }
    }

    @media screen and (min-width: 481px) and (max-width: 768px) {
        h1 {
            font-size: 26px;
        }

        .btn-success {
            width: 60%;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Details Deleted Successfully</h1>
        <p>Your account details have been deleted. Please try login to Confirm.</p>
        <a href="login.jsp"><button type="button" class="btn btn-success">Login</button></a>
        <a href="index.jsp"><button type="button" class="btn btn-success">register</button></a>
    </div>
</body>
</html>
