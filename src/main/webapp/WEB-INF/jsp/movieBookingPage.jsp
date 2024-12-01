<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f4f7fc, #e3f2fd);
            margin: 0;
            padding: 0;
            height: 100vh;
        }
        .back-btn {
    background-color: #007bff;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 10px;
    text-align: center;
    font-size: 1.2em;
    display: inline-block;
    width: 150px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
    text-decoration: none; /* remove underline */
    margin-top: 20px;
    box-shadow: 0px 4px 8px rgba(0, 123, 255, 0.4); /* Add a soft shadow */
    outline: none; /* Remove outline when clicked */
}

.back-btn:hover {
    background-color: #0056b3;
    transform: translateY(-3px); /* Slight upward movement on hover */
}

.back-btn:active {
    background-color: #004085;
    transform: translateY(0); /* Return to original position on click */
}
        

        header {
            background-color: #28a745;
            color: white;
            padding: 30px 0;
            text-align: center;
            font-size: 2.5em;
        }

        .content {
            margin-top: 50px;
            padding: 30px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
            max-width: 1000px;
            margin: 50px auto;
        }

        .table {
            margin-top: 20px;
        }

        .table th {
            background-color: #f1f5f9;
            color: #495057;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 20px;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            background-color: #e2e8f0;
            font-size: 1.2em;
            color: #333;
        }

        .btn {
            background-color: #28a745;
            color: white;
            padding: 12px 20px;
            border: none;
            font-size: 1.2em;
            width: 100%;
            cursor: pointer;
            border-radius: 10px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #218838;
        }

        .form-select {
            border-radius: 10px;
        }

        .form-control {
            border-radius: 10px;
        }

        .seat-number {
            width: 100%;
        }

        .back-btn {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            text-align: center;
            font-size: 1.2em;
            display: inline-block;
            width: 150px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            text-decoration: none; /* remove underline */
            margin-top: 20px;
        }

        .back-btn:hover {
            background-color: #0056b3;
        }

        .seat-type-select {
            margin-bottom: 20px;
        }

        .footer {
            margin-top: 50px;
            text-align: center;
            font-size: 1.2em;
            color: #495057;
        }

        .back-btn {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            text-align: center;
            font-size: 1.2em;
            display: block;
            margin: 20px auto;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<header>Movie Booking System</header>

<div class="content">
    <h2>Book Your Movie Tickets</h2>
    <form action="/bookSeats" method="POST">
        <input type="hidden" name="movieId" value="${movie.movieId}" />
        <input type="hidden" name="movieName" value="${movie.movieName}" />

        <div class="row">
            <c:forEach var="show" items="${movieShowList}">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <input type="radio" name="selectedShowTime" value="${show.showTimeName}" onclick="setRequired('${show.showTimeName}')"/>
                            <strong>${show.showTimeName}</strong>
                        </div>
                        <div class="card-body">
                            <div class="row mb-3">
                                <div class="col">
                                    <label>Royal Seats Available</label>
                                    <p>${show.royalSeatNumber - show.royalBooked}</p>
                                </div>
                                <div class="col">
                                    <label>Premier Seats Available</label>
                                    <p>${show.premierSeatNumber - show.premierBooked}</p>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="seatType_${show.showTimeName}" class="form-label">Seat Type</label>
                                <select class="form-select seat-type-select" name="seatType_${show.showTimeName}" onchange="updateSeatNumber('${show.showTimeName}')">
                                    <option value="royal">Royal</option>
                                    <option value="premier">Premier</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="seatInput_${show.showTimeName}" class="form-label">Number of Seats</label>
                                <input type="number" class="form-control seat-number" name="numberOfSeats_${show.showTimeName}" id="seatInput_${show.showTimeName}" min="1" />
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <button type="submit" class="btn">Confirm Booking</button>
    </form>

    <!-- Back Button -->
   <a href="/index" class="back-btn">Back</a>

</div>

<div class="footer">
    <p>&copy; 2024 MovieBooking. All Rights Reserved.</p>
</div>

<script>
    // Function to make the "Number of Seats" field required based on selected showtime
    function setRequired(selectedShowTime) {
        // Remove the 'required' attribute from all number inputs
        const allSeats = document.querySelectorAll('input[name^="numberOfSeats_"]');
        allSeats.forEach(function(seatInput) {
            seatInput.removeAttribute('required');
        });

        // Add 'required' attribute to the selected show's input
        const selectedSeatInput = document.querySelector(`#seatInput_${selectedShowTime}`);
        if (selectedSeatInput) {
            selectedSeatInput.setAttribute('required', 'true');
        }
    }

    // Update seat number limits based on the selected seat type
    function updateSeatNumber(showTime) {
        const seatTypeSelect = document.querySelector(`select[name="seatType_${showTime}"]`);
        const seatInput = document.querySelector(`#seatInput_${showTime}`);

        const royalSeatsAvailable = ${show.royalSeatNumber} - ${show.royalBooked};
        const premierSeatsAvailable = ${show.premierSeatNumber} - ${show.premierBooked};

        if (seatTypeSelect.value === 'royal') {
            seatInput.max = royalSeatsAvailable;
        } else if (seatTypeSelect.value === 'premier') {
            seatInput.max = premierSeatsAvailable;
        }
    }
</script>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
