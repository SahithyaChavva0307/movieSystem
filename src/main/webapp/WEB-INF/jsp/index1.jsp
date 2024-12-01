<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Online Movie Booking System</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        /* Body and Background */
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://freedesignfile.com/upload/2017/02/Movie-theater-background-with-red-seats-vector-05.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Navbar */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.85);
            z-index: 100;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .navbar .logo {
            font-family: 'Poppins', sans-serif;
            font-size: 2rem;
            color: #fff;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-decoration: none;
        }

        .navbar .nav-links {
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .navbar .nav-links a {
            color: #fff;
            font-size: 1.2rem;
            font-weight: 500;
            text-decoration: none;
            text-transform: capitalize;
            padding: 10px 18px;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar .nav-links a:hover {
            background-color: #DAA520;
            transform: scale(1.1);
        }

        .navbar .dropdown {
            position: relative;
        }

        .navbar .dropdown:hover .dropdown-content {
            display: block;
        }

        .navbar .dropdown-content {
            display: none;
            position: absolute;
            background-color: rgba(0, 0, 0, 0.9);
            top: 100%;
            left: 0;
            border-radius: 6px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            width: 220px;
        }

        .navbar .dropdown-content a {
            color: #fff;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .navbar .dropdown-content a:hover {
            background-color: #DAA520;
        }

        /* Hamburger Menu */
        .navbar .hamburger {
            display: none;
            font-size: 2rem;
            color: #fff;
            cursor: pointer;
        }

        /* Content Section */
        .content-container {
            margin-top: 100px; /* Space for fixed navbar */
            padding: 40px;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.4);
            max-width: 90%;
            margin-left: auto;
            margin-right: auto;
        }

        h1 {
            font-family: 'Poppins', sans-serif;
            color: #DAA520;
            text-align: center;
            font-size: 2.8rem;
            margin-bottom: 30px;
        }

        /* Footer */
        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.85);
            padding: 10px 0;
            text-align: center;
            color: #fff;
            font-size: 0.8rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar .nav-links {
                display: none;
                flex-direction: column;
                gap: 10px;
            }

            .navbar.active .nav-links {
                display: flex;
            }

            .navbar .hamburger {
                display: block;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <a href="#" class="logo">MovieHub</a>
    <div class="nav-links">
        <div class="dropdown">
            <a href="#" class="nav-link">Movie Management</a>
            <div class="dropdown-content">
                <a href="/addMovie">Add Movie</a>
                <a href="/movieReport">Movie Reports</a>
            </div>
        </div>
        <div class="dropdown">
            <a href="#" class="nav-link">Show Time Management</a>
            <div class="dropdown-content">
                <a href="/addShowTime">Add Show Time</a>
                <a href="/showTimeReport">Show Time Reports</a>
            </div>
        </div>
        <div class="dropdown">
            <a href="#" class="nav-link">Booking Management</a>
            <div class="dropdown-content">
                <a href="/movieBookings">Booking Reports</a>
                <a href="/movieReportLanguage">Reports by Language</a>
            </div>
        </div>
        <a href="/logout" class="nav-link">Logout</a>
    </div>
    <div class="hamburger" onclick="toggleNavbar()">&#9776;</div>
</div>

<!-- Content -->
<div class="container content-container">
    <h1>Welcome to Online Booking System</h1>
</div>

<!-- Footer -->
<footer>
    &copy; 2024 MovieHub. All Rights Reserved.
</footer>

<!-- Script for Mobile Navbar -->
<script>
    function toggleNavbar() {
        const navbar = document.querySelector('.navbar');
        navbar.classList.toggle('active');
    }
</script>
</body>
</html>
