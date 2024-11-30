<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Report</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background image */
        body {
            background-image: url('https://img.freepik.com/free-vector/cinema-stage-background-with-clapperboard-popcorn-chairs_1017-38722.jpg?uid=R128034498&ga=GA1.1.1443282485.1731505884&semt=ais_hybrid');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            font-family: Arial, sans-serif;
        }

        /* Container for the report */
        .container {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for readability */
            padding: 30px;
            border-radius: 10px;
            margin-top: 50px;
        }

        /* Heading */
        h1 {
            text-align: center;
            text-decoration: underline;
            margin-bottom: 30px;
        }

        /* Table styles */
        table {
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        /* Links */
        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Show Details section */
        .show-details {
            background-color: rgba(255, 255, 255, 0.5); /* Transparent background for readability */
            padding: 15px;
            border-radius: 8px;
        }

        /* Button styles */
        .btn-custom {
            margin: 5px;
        }

        /* Attribution */
        .attribution {
            text-align: center;
            font-size: 12px;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Movie Report</h1>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Movie Number</th>
                <th>Movie Name</th>
                <th>Language</th>
                <th>Genre</th>
                <th>Duration</th>
                <th>Rating</th>
                <th>Show Details</th>
               
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${movieList}" var="movie">
                <tr>
                    <td style="color: #f0f0f0;">${movie.movieId}</td>
                    <td style="color: #ffd700;">${movie.movieName}</td>
                    <td style="color: #f0f0f0;">${movie.language}</td>
                    <td style="color: #f0f0f0;">${movie.genre}</td>
                    <td style="color: #f0f0f0;">${movie.duration}</td>
                    <td style="color: #f0f0f0;">${movie.ratings}</td>

                    <td>
                        <div class="show-details">
                            <c:forEach items="${movieMap}" var="showTime">
                                <c:if test="${movie.movieId == showTime.key}">
                                    <table class="table table-sm table-striped" style="margin-top: 10px;">
                                        <c:forEach items="${showTime.value}" var="show">
                                            <tr><td>Show Time Name:</td><td>${show.showTimeName}</td></tr>
                                            <tr><td>Royal Seat:</td><td>${show.royalSeatNumber}</td></tr>
                                            <tr><td>Royal Booked:</td><td>${show.royalBooked}</td></tr>
                                            <tr><td>Premier Seat:</td><td>${show.premierSeatNumber}</td></tr>
                                            <tr><td>Premier Booked:</td><td>${show.premierBooked}</td></tr>
                                        </c:forEach>
                                    </table>
                                </c:if>
                            </c:forEach>
                        </div>
                    </td>
                         </tr>
            </c:forEach>
        </tbody>
    </table>

    <br/>
    <h3><a href="/index" class="text-white">Return</a></h3>
</div>

<!-- Attribution -->
<div class="attribution">
    Image by <a href="https://thumbs.dreamstime.com/b/movie-film-strip-reel-popcorn-background-cinema-concept-321870052.jpg" target="_blank" style="color: white;">blank</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
                    