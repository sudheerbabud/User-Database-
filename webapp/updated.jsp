<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
          	background-color:#f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }
        .box {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: 15px;
            text-align: left;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        button {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
        p {
            margin: 10px 0;
            font-size: 14px;
        }
        #s {
            text-align: center;
        }
        @media (max-width: 768px) {
            body {
                padding: 20px;
            }
            .box {
                width: 100%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="box">
        <h1>Old Details</h1>
        <p><label>Username:</label> <%= session.getAttribute("us") %></p>
        <p><label>Password:</label> <%= session.getAttribute("pwd") %></p>
        <p><label>Email:</label> <%= session.getAttribute("ema")  %></p>
        <p><label>Phone Number:</label> <%=session.getAttribute("phone")  %></p>
    </div>

    <div class="box">
        <h1>Update Your Details</h1>
        <form name="update" action="update" method="post">
            <p>
                <label>Username:</label>
                <input type="text" name="username" value="<%= session.getAttribute("us") %>" readonly>
            </p>
            <p>
                <label>New Password:</label>
                <input type="password" name="password" placeholder="Enter new password" required>
            </p>
            <p>
                <label>New Email:</label>
                <input type="email" name="email" placeholder="Enter new email" required>
            </p>
            <p>
                <label>New Phone Number:</label>
                <input type="tel" name="phonenumber" placeholder="Enter new phone number" required>
            </p>
            <button type="submit" id="s">Update</button>
        </form>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <p style="color: red;">
                <%= request.getAttribute("errorMessage") %>
            </p>
        <% } %>
    </div>
</body>
</html>
