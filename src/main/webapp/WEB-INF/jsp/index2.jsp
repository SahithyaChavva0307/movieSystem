<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking System</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background-image: url('https://png.pngtree.com/thumb_back/fh260/back_our/20190622/ourmid/pngtree-movie-shooting-silhouette-film-festival-poster-image_215413.jpg'); /* Replace with your background image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #333;
            padding: 1rem 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-left: 30px; /* Added to move the navbar to the right */
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: 600;
            color: #FFD700; /* Gold Color */
            text-transform: uppercase;
        }

        .navbar-brand:hover {
            color: #fff;
        }

        .navbar-nav {
            margin-left: -20px; /* This will move the Movies and Bookings to the left */
            display: flex;
            justify-content: space-between;
            width: 100%; /* Ensures the nav items take up full space */
        }

        .navbar-nav .nav-item {
            margin-right: 20px; /* Adds space between items */
        }

        .navbar-nav .nav-link {
            color: #ddd;
            font-size: 1rem;
            transition: all 0.3s;
        }

        .navbar-nav .nav-link:hover {
            color: #FFD700;
        }

        .dropdown-menu {
            background-color: #444;
            border: none;
            min-width: 150px; /* Ensures the dropdown doesn't overflow */
        }

        .dropdown-menu .dropdown-item {
            color: #ddd;
            transition: all 0.3s;
        }

        .dropdown-menu .dropdown-item:hover {
            background-color: #FFD700;
            color: #333;
        }

        .navbar .btn {
            color: #fff;
            background-color: #ff6b6b;
            border: none;
            font-size: 0.9rem;
            padding: 5px 15px;
            border-radius: 20px;
            transition: all 0.3s ease-in-out;
        }

        .navbar .btn:hover {
            background-color: #ff4c4c;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.2rem;
            }

            .navbar-nav .nav-link {
                margin: 5px 0;
            }

            .navbar-nav {
                margin-left: 0;
                justify-content: center;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fa fa-film"></i> MovieBooking</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon" style="color: white;"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="moviesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Movies
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="moviesDropdown">
                        <li><a class="dropdown-item" href="/movieReport">View Movies</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="bookingsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Bookings
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="bookingsDropdown">
                        <li><a class="dropdown-item" href="/movieReportLanguage">Movie Report Language & Booking</a></li>
                        <li><a class="dropdown-item" href="/movieBookings">Movie Bookings</a></li>
                        <li><a class="dropdown-item" href="/cancelTicket">Cancellation</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="btn" href="/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content Section -->
<div class="container mt-5 text-center">
    <h1 style="font-size: 3rem; font-weight: 700; color: #FFD700;">Welcome to the Ultimate Movie Experience!</h1>
    <p style="font-size: 1.2rem; color: #fff; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">
        Discover a world of cinematic adventures! Browse our latest movie listings, manage your bookings with ease, and dive into the world of entertainment like never before.
    </p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
