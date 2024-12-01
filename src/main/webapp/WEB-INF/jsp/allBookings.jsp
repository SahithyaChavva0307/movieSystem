<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Movie Bookings</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #343a40;
            color: #ffffff;
            padding: 30px 0;
            text-align: center;
            font-size: 2em;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        footer {
            background-color: #343a40;
            color: #ffffff;
            padding: 15px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .content {
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 40px auto;
            width: 90%;
            max-width: 1200px;
        }

        .table th {
            background-color: #007bff;
            color: #ffffff;
            font-weight: bold;
        }

        .table td, .table th {
            padding: 15px;
            text-align: left;
            vertical-align: middle;
            border: 1px solid #dee2e6;
        }

        .table {
            margin: 20px 0;
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
        }

        .movie-image {
            width: 150px;
            height: 220px;
            object-fit: cover;
            border-radius: 8px;
            border: 2px solid #ddd;
            transition: transform 0.3s;
        }

        .movie-image:hover {
            transform: scale(1.1);
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .status-badge {
            padding: 5px 10px;
            border-radius: 20px;
            color: #fff;
        }

        .status-badge.active {
            background-color: #28a745;
        }

        .status-badge.inactive {
            background-color: #dc3545;
        }

        .movie-name {
            font-weight: bold;
            color: #343a40;
            font-size: 1.1em;
        }

        .text-center a {
            font-size: 1.2em;
        }

        .movie-card {
            display: flex;
            align-items: center;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .movie-card:hover {
            transform: translateY(-5px);
        }

        .movie-card img {
            margin-right: 20px;
            width: 120px;
            height: 180px;
            border-radius: 8px;
        }

        .movie-card .movie-details {
            flex-grow: 1;
        }

        .movie-card .movie-details h5 {
            font-size: 1.3em;
            margin: 0;
        }

        .movie-card .movie-details p {
            color: #777;
        }

    </style>
</head>
<body>
    <header>All Movie Bookings</header>
    <div class="content">
        <h2 class="text-center mb-4">Booking Details</h2>

        <!-- Movies List -->
        <div class="row">
            <c:forEach var="ticket" items="${tickets}">
                <div class="col-md-4">
                    <div class="movie-card">
                        <!-- Movie Image -->
                        <img 
                            src="${ticket.movie.url != null ? ticket.movie.url : 'https://via.placeholder.com/800x1200'}" 
                            alt="${ticket.movie.movieName}" 
                            class="movie-image">
                        
                        <!-- Movie Details -->
                        <div class="movie-details">
                            <h5 class="movie-name">${ticket.movieName}</h5>
                             <p><strong>Ticket Id:</strong> ${ticket.ticketId}</p>
                            
                            <p><strong>Show Time:</strong> ${ticket.showTimeName}</p>
                            <p><strong>Seats:</strong> ${ticket.numberOfSeatBooking}</p>
                            <p><strong>Total:</strong> ${ticket.amountPayable}</p>
                            <p><strong>Transaction ID:</strong> ${ticket.transactionId}</p>
                            <span class="status-badge ${ticket.status == 'Booked' ? 'active' : 'inactive'}">${ticket.status}</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="text-center mt-4">
            <a href="/index" class="btn btn-primary">Back to Home</a>
        </div>
    </div>

    <footer>&copy; 2024 Movie Booking System. All rights reserved.</footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>