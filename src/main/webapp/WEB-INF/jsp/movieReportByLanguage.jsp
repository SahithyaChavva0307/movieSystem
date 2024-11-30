<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Movies in ${selectedLanguage}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .movie-container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }
        .movie-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .movie-item {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="movie-container">
        <h2>Movies in ${selectedLanguage}</h2>

        <div class="movie-list">
            <c:forEach var="movie" items="${movieList}">
                <div class="movie-item">
                    <h3>${movie.movieName}</h3>
                    <c:forEach var="movieShowDTO" items="${movieMap[movie.movieId]}">
                        <p>Showtime: ${movieShowDTO.showTimeName}</p>
                        <p>Royal Seats: ${movieShowDTO.royalSeatNumber} (Booked: ${movieShowDTO.royalBooked})</p>
                        <p>Premier Seats: ${movieShowDTO.premierSeatNumber} (Booked: ${movieShowDTO.premierBooked})</p>
                    </c:forEach>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
