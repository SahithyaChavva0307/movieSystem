<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Booking System</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        /* Apply Background Image */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://freedesignfile.com/upload/2017/02/Movie-theater-background-with-red-seats-vector-05.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff; /* Text color */
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px 30px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
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
            margin-top: 50px;
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

        /* Styling for the page content */
        .content-container {
            padding: 40px;
            background-color: rgba(0, 0, 0, 0.7); /* Slight transparent background */
            border-radius: 10px;
            margin-top: 30px;
        }
    </style>
</head>
<body>

<div class="container content-container">

    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">Movie Management</button>
            <div class="dropdown-content">
                <a href="/addMovie">Movie Addition</a>
                <a href="/movieReportLanguage">Movie Reportbylanguage</a>
                <a href="/">Movie Deletion</a>
                <a href="/movieReport">Movie Reports</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Theater Management</button>
            <div class="dropdown-content">
                <a href="/">Theater Addition</a>
                <a href="/">Theater Update</a>
                <a href="/">Theater Deletion</a>
                <a href="/">Theater Reports</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Show Time Management</button>
            <div class="dropdown-content">
                <a href="/addShowTime">Show Time Addition</a>
                <a href="/showTimeReport">Show Time Report</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Booking Management</button>
            <div class="dropdown-content">
                <a href="/">New Booking</a>
                <a href="/">Booking Update</a>
                <a href="/">Cancellation</a>
                <a href="/">Booking Report</a>
            </div>
        </div>

        <a href="/logout">Logout</a>
    </div>

    <h1>Welcome To Online Movie Booking System</h1>

</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</body>
</html>
