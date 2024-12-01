<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies in ${selectedLanguage}</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background styling */
        body {
            background-image: url('https://t3.ftcdn.net/jpg/10/25/57/76/240_F_1025577629_EPnzUsnnBYENn35cOWUomyTjqRzFbNKh.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Container for the movies */
        .movie-container {
            width: 90%;
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }

        /* Title styling */
        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            font-size: 30px;
            color: #f1f1f1;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.8);
        }

        /* Movie list grid layout */
        .movie-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }

        /* Individual movie item card */
        .movie-item {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            color: #fff;
        }

        /* Hover effects on movie items */
        .movie-item:hover {
            transform: scale(1.05);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.7);
        }

        /* Styling movie names */
        .movie-item h3 {
            margin-bottom: 15px;
            font-size: 22px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            color: #f1f1f1;
        }

        /* Styling movie details */
        .movie-item p {
            margin: 5px 0;
            font-size: 16px;
            color: #d1d1d1;
        }

        /* Movie image styling */
        .movie-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        /* Responsive adjustments */
        @media (max-width: 576px) {
            .movie-item h3 {
                font-size: 18px;
            }

            .movie-item p {
                font-size: 14px;
            }
        }

        /* Additional Styling for the return button */
        .return-link {
            color: #fff;
            font-size: 18px;
            display: block;
            margin-top: 20px;
            text-align: center;
        }

        .return-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="movie-container">
    <h2>Movies in ${selectedLanguage}</h2>
    <div class="movie-list">
        <c:forEach var="movie" items="${movieList}">
            <div class="movie-item">
                <!-- Movie Image Display -->
                <img src="${movie.url}" alt="${movie.movieName} Image" />

                <h3>${movie.movieName}</h3>
                <c:forEach var="movieShowDTO" items="${movieMap[movie.movieId]}">
                    <p>Showtime: ${movieShowDTO.showTimeName}</p>
                    <p>Royal Seats: ${movieShowDTO.royalSeatNumber} (Booked: ${movieShowDTO.royalBooked})</p>
                    <p>Premier Seats: ${movieShowDTO.premierSeatNumber} (Booked: ${movieShowDTO.premierBooked})</p>
                </c:forEach>
            </div>
        </c:forEach>
    </div>

    <!-- Return Link -->
    <h3><a class="return-link" href="/index">Return</a></h3>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
