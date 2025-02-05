<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style type="text/css">
        body {
            background-color:#f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 90%;
            width: 600px;
        }
        h1 {
        	color:green;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
        }
        button {
            width: 100%;
            padding: 15px;
            font-size: 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #8BC18D;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }
            button {
                font-size: 18px;
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello <%= session.getAttribute("us") %>!!</h1>
        <a href="details.jsp"><button>Click Here to View Your Details</button></a>
    </div>
</body>
</html>
