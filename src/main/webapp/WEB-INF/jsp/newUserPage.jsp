<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
   function passwordCheck(){
	   var pass1=document.getElementById("pass1").value;
	   var pass2=document.getElementById("pass2").value;
	   if(pass1===pass2)
		   document.getElementById("registrationForm").submit();
	   else
		   alert("Passwords are not matched");
   }
</script>
<title>Welcome</title>
</head>
<body>

<div align="center">
<h2>
<form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
Enter New User Id:<form:input  path="username"/>
<br/><br/>
Enter New Password:<form:input type="password" id="pass1" path="password"/>
<br/><br/>
Re-type New Password:<input type="password" id="pass2"/>
<br/><br/>
Enter User's name:<form:input path="name"/>
<br/><br/>
Enter email:<form:input path="email"/>
<br/><br/>
  Select User Role:<form:input list="types" name="type" id="type" path="role"/>
<datalist id="types">
<option value="Customer">
<option value="Admin">
</datalist>
<button type="button" onclick="passwordCheck();">Submit</button>
<button type="reset">Reset</button>
</form:form>
</h2>
</div>

</body>
</html> -->





<!--   <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register New User</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        overflow: hidden; /* Prevent scrollbar */
    }

    .container {
        max-width: 400px; /* Width of the container */
        margin: 30px auto; /* Reduced margin for compactness */
        padding: 15px; /* Reduced padding */
        background-color: white;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        border-radius: 10px;
        overflow: hidden; /* Prevent content overflow */
    }

    h2 {
        font-size: 1.6em; /* Reduced font size for the title */
        color: #333;
        text-align: center;
        margin-bottom: 15px; /* Reduced margin */
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 10px; /* Reduced gap between form elements */
    }

    label {
        font-size: 1em; /* Reduced label font size */
        color: #333;
    }

    input, select {
        padding: 8px; /* Reduced padding for inputs */
        font-size: 1em;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        box-sizing: border-box;
        transition: border-color 0.3s ease-in-out;
    }

    input:focus, select:focus {
        border-color: #DAA520;
        outline: none;
    }

    button {
        padding: 10px; /* Adjusted padding */
        font-size: 1em; /* Adjusted font size */
        border: none;
        border-radius: 5px;
        background-color: #DAA520;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease-in-out;
        width: 100%; 
        margin-bottom : 5px;
    }

    button:hover {
        background-color: #c99514;
    }

    button[type="reset"] {
        background-color: #ccc;
        color: #333;
    }

    button[type="reset"]:hover {
        background-color: #aaa;
    }

    .form-group {
        margin-bottom: 10px; /* Reduced bottom margin */
    }

    .form-group label {
        margin-bottom: 5px;
        display: block;
    }

    .error {
        color: red;
        font-size: 0.9em;
        margin-top: -10px;
    }

    @media (max-width: 768px) {
        .container {
            width: 90%;
            padding: 10px; /* Adjusted padding for smaller screens */
        }
    }
</style>

<script type="text/javascript">
    function passwordCheck() {
        var pass1 = document.getElementById("pass1").value;
        var pass2 = document.getElementById("pass2").value;
        if (pass1 === pass2) {
            document.getElementById("registrationForm").submit();
        } else {
            alert("Passwords do not match");
        }
    }
</script>
</head>
<body>

<div class="container">
    <h2>User Registration</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
        <div class="form-group">
            <label for="username">Enter New User Id:</label>
            <form:input path="username" id="username" />
        </div>

        <div class="form-group">
            <label for="pass1">Enter New Password:</label>
            <form:input type="password" id="pass1" path="password" />
        </div>

        <div class="form-group">
            <label for="pass2">Re-type New Password:</label>
            <input type="password" id="pass2" />
        </div>

        <div class="form-group">
            <label for="name">Enter User's Name:</label>
            <form:input path="name" id="name" />
        </div>

        <div class="form-group">
            <label for="email">Enter Email:</label>
            <form:input path="email" id="email" />
        </div>

        <div class="form-group">
            <label for="type">Select User Role:</label>
            <form:input list="types" name="type" id="type" path="role" />
            <datalist id="types">
                <option value="Customer">
                <option value="Admin">
            </datalist>
        </div>

        <div class="form-group">
            <button type="button" onclick="passwordCheck();">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</div>

</body>
</html> -->




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register New User</title>
<style>
    body {
    	height : 100%;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://static.wixstatic.com/media/1d6090cc4bbf44628dfd82a1979770e8.jpg/v1/fill/w_980,h_490,fp_0.50_0.50,q_90,usm_0.66_1.00_0.01/1d6090cc4bbf44628dfd82a1979770e8.jpg'); /* Replace with your image URL */
        background-size: cover; /* Cover the entire viewport */
        background-position: center; /* Center the image */
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: rgba(51, 51, 51, 0.6); /* Semi-transparent navbar */
        color: white;
        width: 100%;
        top: 0; /* Position it at the very top */
        left: 0; /* Align to the left edge */
        padding: 15px 30px;
        z-index: 1000; /* Ensures it stays above other content */
        box-sizing: border-box;
    }

    .navbar h1 {
        font-size: 1.5em;
        margin: 0;
    }

    .navbar a {
        color: white;
        text-decoration: none;
        padding: 15px 30px;
        border-radius: 5px;
        background-color: #28a745;
        transition: background-color 0.3s ease;
    }

    .navbar a:hover {
        background-color: #218838;
    }

    .container {
        max-width: 400px; /* Width of the container */
        margin-top :30px;
        margin-left: 140px; /* Center the container */
        padding: 20px; /* Padding for the container */
        background-color: rgba(51, 51, 51, 0.6);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden; /* Prevent content overflow */
        opacity: 0.9; /* Slight transparency for the container */
    }

    h2 {
        font-size: 1.5em; /* Adjusted font size for the title */
        color: white;
        text-align: center;
        margin-bottom: 10px; /* Reduced margin */
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 10px; /* Space between form elements */
    }

    label {
        font-size: 0.9em; /* Smaller label font size */
        color: white;
    }

    input, select {
        padding: 8px; /* Padding for inputs */
        font-size: 0.9em; /* Smaller font size for inputs */
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        box-sizing: border-box;
        transition: border-color 0.3s ease-in-out;
    }

    input:focus, select:focus {
        border-color: #DAA520;
        outline: none;
    }

    button {
        padding: 10px; /* Adjusted padding */
        font-size: 1em; /* Adjusted font size */
        border: none;
        border-radius: 5px;
        background-color: #28a745;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease-in-out;
        margin-bottom : 5px;
        width: 100%; /* Full width */
    }

    button:hover {
        background-color: #218838;
    }

    button[type="reset"] {
        background-color: #ccc;
        color: #333;
    }

    button[type="reset"]:hover {
        background-color: #aaa;
    }

    .form-group {
        margin-bottom: 10px; /* Space below each form group */
    }

    .form-group label {
        margin-bottom: 5px;
        display: block;
    }

    .error {
        color: red;
        font-size: 0.9em;
        margin-top: -10px;
    }

    @media (max-width: 768px) {
        .container {
            width: 90%; /* Adjusted width for smaller screens */
            padding: 10px; /* Adjusted padding */
        }
    }
</style>

<script type="text/javascript">
    function passwordCheck() {
        var pass1 = (document.getElementById("pass1").value).toString();
        var pass2 = (document.getElementById("pass2").value).toString();
        if(pass1.length < 5 || pass1.length > 10){
        	alert("Password should contains 5 to 10 Characters");
        }
        if (pass1 === pass2) {
            document.getElementById("registrationForm").submit();
            return;
        } else {
            alert("Passwords do not match");
        }
    }
</script>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <h1>MovieBookingSystem</h1>
    <a href="/login">Login</a>
</div>

<div class="container">
    <h2>User Registration</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
        <div class="form-group">
            <label for="username">Enter New User Id:</label>
            <form:input path="username" id="username" />
        </div>

        <div class="form-group">
            <label for="pass1">Enter New Password:</label>
            <form:input type="password" id="pass1" path="password" />
        </div>

        <div class="form-group">
            <label for="pass2">Re-type New Password:</label>
            <input type="password" id="pass2" />
        </div>

        <div class="form-group">
            <label for="name">Enter User's Name:</label>
            <form:input path="name" id="name" />
        </div>

        <div class="form-group">
            <label for="email">Enter Email:</label>
            <form:input path="email" id="email" />
        </div>

        <div class="form-group">
            <label for="type">Select User Role:</label>
            <form:input list="types" name="type" id="type" path="role" />
            <datalist id="types">
                <option value="Customer">
                <option value="Admin">
            </datalist>
        </div>

        <div class="form-group">
            <button type="button" onclick="passwordCheck();">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</div>

</body>
</html>





