<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Calculator</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    color: #333;
}

.container {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 300px;
}

.container img {
    width: 100px;
    height: 100px;
}

h1 {
    font-size: 1.5em;
    margin-bottom: 20px;
    color: #007bff;
}

form input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
}

form button {
    width: 22%;
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 4px;
    background: #007bff;
    color: white;
    font-size: 1em;
    cursor: pointer;
    transition: background 0.3s;
}

form button:hover {
    background: #0056b3;
}

.answer {
    margin-top: 20px;
    font-size: 1.2em;
    color: #28a745;
}
</style>
</head>
<body>
<div class="container">
    <img src="image/cal.gif" alt="Calculator">
    <h1>Hello, Welcome To My Calculator</h1>
    <form action="calculator">
        <input type="text" name="t1" placeholder="Enter first number" required><br>
        <input type="text" name="t2" placeholder="Enter second number" required><br>
        <button name="bt1" value="1">+</button>
        <button name="bt1" value="2">-</button>
        <button name="bt1" value="3">*</button>
        <button name="bt1" value="4">/</button>
    </form>
    <div class="answer">Ans = <%= request.getParameter("ans") %></div>
</div>
</body>
</html>
