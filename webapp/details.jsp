<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details</title>
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
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        .box {
            width: 100%;
            max-width: 600px;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.4);
            border-radius: 8px;
            text-align: center;
            font-size: 20px;
        }
        .box form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .box label {
            font-weight: bold;
            margin-right: 10px;
        }
        .box p {
            margin: 10px 0;
        }
        #btn {
            width: 100%;
            max-width: 200px;
            padding: 10px;
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #btn:hover {
            background-color: #45a049;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
        @media (max-width: 768px) {
            .box {
                width: 90%;
                padding: 20px;
                font-size: 18px;
            }
            #btn {
                max-width: 150px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="box">
        <form name="update" method="post">
            <p><label>Username:</label> <%= session.getAttribute("us") %></p>
            <p><label>Email:</label> <%= session.getAttribute("ema") %></p>
            <p><label>Phone Number:</label> <%= session.getAttribute("phone") %></p>
            <button type="button" id="btn" onclick="window.location.href='updated.jsp'">Edit</button>
        </form>
    </div>
</body>
</html>

