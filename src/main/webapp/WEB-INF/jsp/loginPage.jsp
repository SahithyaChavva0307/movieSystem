<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	body{
		background-color : #f5f5f5;
		padding : 0;
		margin : 0;
	}
	.loginbox{
		display : flex;
		align-items : center;
		color : #e6e6e6;
		margin : 10px;
	}
</style>
</head>
<body>

	<div align="center" class = "loginBox">
	<h3>
	<form action="/login" method="post">
 
	Enter User Id:<input type="text" name="username"/>
	<br/><br/>
	Enter Password:<input type="password" name="password"/>
	<br/><br/>
 
	<input type="submit" value="Submit"/>
	</form>
	</h3>
	<h2>
	<a href="/register">Register for new User</a>
	</h2>
	</div>
</body>
</html> -->



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to the World of Cinema</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        background-image: url("https://static.wixstatic.com/media/1d6090cc4bbf44628dfd82a1979770e8.jpg/v1/fill/w_980,h_490,fp_0.50_0.50,q_90,usm_0.66_1.00_0.01/1d6090cc4bbf44628dfd82a1979770e8.jpg");
        background-size: cover;
        background-position: center;
        padding: 0;
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
        display: flex;
        flex-direction: column;
        justify-content: center;
        overflow: hidden; 
        height: 100vh;
        padding-top: 70px; /* To avoid overlap with navbar */
    }
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: rgba(51, 51, 51, 0.6); /* Semi-transparent navbar */
        color: white;
        width: 100%;
        position: fixed; /* Make it fixed at the top */
        top: 0; /* Position it at the very top */
        left: 0; /* Align to the left edge */
        padding: 15px 30px;
        z-index: 1000; /* Ensures it stays above other content */
        box-sizing: border-box;
    }
    .navbar div {
        padding-left: 10px;
        padding-right: 10px;
    }
    .navbar a {
        cursor: pointer;
        background-color: #28a745;
        transition: background 0.3s;
        text-decoration: none;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 15px 30px;
        font-weight: bold;
        margin-right: 20px; /* Added space after the Sign Up button */
    }
    .navbar a:hover {
        background: #218838;
    }
    .loginBox {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        color: white;
        width: 450px;
        background-color: rgba(51, 51, 51, 0.6); /* Semi-transparent box */
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        padding: 40px;
        margin-left: 140px;
        margin-top : 1px;
        transition : all 0.3s ease-in-out;
    }
    .loginBox:hover {
    	transform: scale(1.05); /* Slight scaling effect on hover */
    	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.4); /* Increase shadow depth */
    	border-bottom: 3px solid white; /* Adds a subtle bottom border */
    	margin-bottom: 30px;
	}
    .loginBox input {
        padding: 13px;
        border-radius: 5px;
        border: none;
        width: 95%;
        margin-top : 15px;
        margin-bottom: 15px;
    }
    .loginBox input[type="submit"] {
        background-color: #28a745;
        color: white;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .loginBox input[type="submit"]:hover {
        background-color: #218838;
    }
    .loginBox label {
        font-weight: bold;
    }
    .registerLink {
        color: #f5f5f5;
        margin-top: 10px;
        font-size: 0.9em;
    }
    .registerLink a {
        text-decoration: none;
        color: #17a2b8;
        transition: color 0.3s;
    }
    .registerLink a:hover {
        color: #0e6e7e;
        padding-bottom: 5px;
        border-bottom : 1px;
    }
</style>
</head>
<body>
    <div class="navbar">
        <div>
            <h2>Movie Booking System</h2>
        </div>
        <div>
            <a href="/register">Sign up</a>
        </div>
    </div>
    <div class="loginBox">
        <h2>LOGIN</h2>
        <form action="/login" method="post">
            <label for="Username">Enter Username : </label>
            <input type="text" name="username" id="Username" placeholder="John Doe" required />
            <label for="Password">Enter Password : </label>
            <input type="password" name="password" id="Password" placeholder="Password" required />
            <input type="submit" value="Submit" />
        </form>
        <div class="registerLink">
            <a href="/register">Register for new User</a>
        </div>
    </div>
</body>
</html>









