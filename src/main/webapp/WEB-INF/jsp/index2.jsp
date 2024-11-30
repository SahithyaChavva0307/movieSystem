<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Movie Booking System</title>
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJ03P6M3A6dele/K1TSPH+guDZZrt3bbjb6gBEdGMYPbGfgZ6rb5SA+0Gbm5" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://freedesignfile.com/upload/2017/02/Movie-theater-background-with-red-seats-vector-05.jpg'); /* Set your image path here */
        background-size: cover;
        background-position: center;
        color: #333;
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #333;
        padding: 10px 20px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .navbar a {
        font-size: 16px;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        transition: background-color 0.3s, border-bottom 0.3s;
    }

    .navbar a:hover, .dropdown:hover .dropbtn {
        background-color: #DAA520;
        border-radius: 4px;
        border-bottom: 3px solid white;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown .dropbtn {
        background-color: inherit;
        color: white;
        font-size: 16px;
        border: none;
        cursor: pointer;
        padding: 10px 20px;
        transition: background-color 0.3s, border-bottom 0.3s;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 180px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
        border-radius: 4px;
        overflow: hidden;
    }

    .dropdown-content a {
        color: #333;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        transition: background-color 0.2s;
    }

    .dropdown-content a:hover {
        background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    h1 {
        font-family: 'Monotype Corsiva', cursive;
        color: #DAA520;
        text-align: center;
        margin-top: 30px;
        font-size: 3em;
    }

    /* Responsive Navbar */
    @media (max-width: 768px) {
        .navbar {
            flex-direction: column;
            align-items: flex-start;
        }

        .dropdown, .navbar a {
            width: 100%;
            text-align: left;
        }
    }
</style>
</head>
<body>

<div class="container text-center py-5">
    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">Movie Management</button>
            <div class="dropdown-content">
                 <a href="/movieReportLanguage">Movie Reportbylanguage</a>
               <!---- <a href="/">Movie Update</a>
                <a href="/">Movie Deletion</a>--->
                <a href="/movieReport">Movie Report</a> 
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Theater Management</button>
            <div class="dropdown-content">
                <!-- <a href="/">Theater Addition</a>
                 <a href="/">Theater Update</a>
                <a href="/">Theater Deletion</a> -->
                <a href="/">Theater Reports</a> 
            </div> 
        </div> 

        <!-- Removed Showtime Management section for now -->

        <div class="dropdown">
            <button class="dropbtn">Booking Management</button>
            <div class="dropdown-content">
                <a href="/">New Booking</a>
                <a href="/">Booking Update</a>
                <a href="/">Cancellation</a>
            </div>
        </div>

        <a href="/logout" class="btn btn-danger">Logout</a>
    </div>

    <h1>Welcome To Online Movie Booking System</h1>
</div>

<!-- Bootstrap JS (optional, for dropdown functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybK7D6gDqBOSp74+VcCZzfiZy52NHA6A92R+Z6XU8VZG3gpgT" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0VJ57+dbu5m+5l3Jl2FwVeUV9h7md3IkJE2joq8+Jl09yWZj" crossorigin="anonymous"></script>

</body>
</html>
