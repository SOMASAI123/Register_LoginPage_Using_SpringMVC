<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            margin-bottom: 20px;
        }
        .button {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            color: white;
        }
        .login {
            background-color: #007BFF;
        }
        .register {
            background-color: #28A745;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Login and Registration Application</h1>
    <div>
        <a href="/login" class="button login">Login</a>
        <a href="/register" class="button register">Register</a>
    </div>
</body>
</html>
