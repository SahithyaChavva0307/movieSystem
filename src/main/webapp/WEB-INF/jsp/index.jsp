<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Online Movie Booking System</title>
  <!-- Add Bootstrap CSS for styles and grid system -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq0P9d91cMZw7zP1c0p+ZW6w5rWo4KZXsHfzdNF40v+6qCfwE3" crossorigin="anonymous">
  <!-- FontAwesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Custom CSS -->
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-image: url('https://freedesignfile.com/upload/2017/02/Movie-theater-background-with-red-seats-vector-05.jpg'); /* Add your desired background image */
      background-size: cover;
      background-position: center;
      color: #fff;
    }

    .navbar {
      background-color: rgba(0, 0, 0, 0.7);
    }

    .navbar a, .navbar .dropdown-content a {
      color: #fff;
      padding: 14px 16px;
      text-decoration: none;
    }

    .navbar a:hover, .dropdown:hover .dropbtn {
      background-color: #DAA520;
      color: #fff;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown-content a {
      color: #333;
      padding: 12px 16px;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
    }

    h1 {
      font-family: 'Monotype Corsiva', cursive;
      color: #DAA520;
      text-align: center;
      margin-top: 20px;
      font-size: 3rem;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
    }

    .container {
      margin-top: 50px;
    }

    .dropdown-btn {
      font-size: 16px;
      color: white;
      background-color: #333;
      padding: 14px 16px;
      border: none;
      cursor: pointer;
      width: 100%;
      text-align: left;
    }

    .dropdown-btn:hover {
      background-color: #DAA520;
    }

    .navbar-nav {
      width: 100%;
    }

    .navbar-nav li {
      margin: 10px 0;
    }

    @media (max-width: 768px) {
      .navbar {
        flex-direction: column;
      }
    }
  </style>
</head>
<body>

  <div class="container">
    <h1>Welcome To Online Movie Booking System</h1>
    
    <div class="navbar navbar-expand-lg navbar-light">
      <div class="dropdown">
        <button class="dropdown-btn">Movie Management</button>
        <div class="dropdown-content">
          <a href="/addMovie">Movie Addition</a>
          <a href="/">Movie Update</a>
          <a href="/">Movie Deletion</a>
          <a href="/movieReport">Movie Reports</a>
        </div>
      </div>
      
      <div class="dropdown">
        <button class="dropdown-btn">Theater Management</button>
        <div class="dropdown-content">
          <a href="/">Theater Addition</a>
          <a href="/">Theater Update</a>
          <a href="/">Theater Deletion</a>
          <a href="/">Theater Reports</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropdown-btn">Show Time Management</button>
        <div class="dropdown-content">
          <a href="/addShowTime">Show Time Addition</a>
          <a href="/showTimeReport">Show Time Report</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropdown-btn">Booking Management</button>
        <div class="dropdown-content">
          <a href="/">New Booking</a>
          <a href="/">Booking Update</a>
          <a href="/">Cancellation</a>
          <a href="/">Booking Report</a>
        </div>
      </div>

      <a href="/logout" class="btn btn-danger ml-auto">Logout</a>
    </div>
  </div>

  <!-- Bootstrap JS and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zyD3PbBPmW8fXmfK1pVvY6R8zYb6G0xVQxaLU7ZX" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-Ni5/xg0Egs7dmOm5A1JdZX7OU5n7ml0z8IkggSi0qV5+3Vv7zrHk08NO6X/WpHhm" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0P9d91cMZw7zP1c0p+ZW6w5rWo4KZXsHfzdNF40v+6qCfwE3" crossorigin="anonymous"></script>
</body>
</html>
