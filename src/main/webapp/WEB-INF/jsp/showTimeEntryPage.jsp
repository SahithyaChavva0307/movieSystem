<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie Booking System - Add Show Time</title>
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJ03P6M3A6dele/K1TSPH+guDZZrt3bbjb6gBEdGMYPbGfgZ6rb5SA+0Gbm5" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20230706/pngtree-gritty-cinematic-backdrop-a-luxurious-and-elegant-3d-rendering-of-a-image_3805012.jpg'); 
        background-size: cover;
        background-position: center;
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .form-container {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        width: 100%;
    }
    h1, h2 {
        color: #555;
        text-align: center;
    }
    label {
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
    }
    .input-field {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .button-group {
        display: flex;
        justify-content: space-between;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button[type="reset"] {
        background-color: #f44336;
    }
    button:hover {
        opacity: 0.9;
    }

    /* For mobile responsiveness */
    @media (max-width: 768px) {
        .form-container {
            width: 90%;
        }
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Add Show Time</h1>
    <h2>Please Enter Show Time Details</h2>
    <form:form action="/addShowTime" method="post" modelAttribute="ShowTimeRecord">
        <form:hidden path="showTimeId"/>
        <form:hidden path="showTimeRoyalPrice"/>

        <label for="showTimeName">Show Time Name:</label>
        <form:input path="showTimeName" cssClass="input-field" id="showTimeName"/>

        <label for="showTimePremierePrice">Show Time Premiere Price:</label>
        <form:input path="showTimePremierePrice" cssClass="input-field" id="showTimePremierePrice"/>

        <div class="button-group">
            <button type="submit" class="btn btn-success">Submit</button>
            <button type="reset" class="btn btn-danger">Reset</button>
        </div>
    </form:form>
</div>

<!-- Bootstrap JS (optional, for dropdown functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybK7D6gDqBOSp74+VcCZzfiZy52NHA6A92R+Z6XU8VZG3gpgT" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0VJ57+dbu5m+5l3Jl2FwVeUV9h7md3IkJE2joq8+Jl09yWZj" crossorigin="anonymous"></script>

</body>
</html>
