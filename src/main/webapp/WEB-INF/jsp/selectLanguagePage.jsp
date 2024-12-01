<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Language Selection</title> <!-- Updated title -->

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background image for the page */
        body {
            background-image: url('https://wallpapers.com/images/featured/movie-9pvmdtvz4cb0xl37.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #ffffff;
        }

        /* Transparent container styling */
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 40px;
            background: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
            border-radius: 8px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4); /* Soft shadow for the container */
        }

        /* Heading styles */
        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7);
            font-size: 2rem;
        }

        /* Dropdown styling */
        select {
            padding: 12px;
            font-size: 16px;
            width: 100%;
            border: none;
            border-radius: 6px;
            background: rgba(255, 255, 255, 0.3); /* Semi-transparent background for dropdown */
            color: #fff;
            margin-bottom: 25px;
        }

        select:focus {
            outline: none;
            box-shadow: 0px 0px 10px #007bff;
        }

        option {
            color: #000; /* Black text for dropdown options */
        }

        /* Button styling */
        button {
            width: 100%;
            padding: 14px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            background-color: #007bff;
            color: white;
            transition: background-color 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0px 5px 15px rgba(0, 123, 255, 0.3);
        }

        button:active {
            background-color: #003f7f;
            transform: translateY(0);
        }

        /* Custom font for form labels */
        .form-label {
            font-size: 1.1rem;
            font-weight: bold;
            color: #f0f0f0;
        }

        /* Mobile responsiveness */
        @media (max-width: 576px) {
            .container {
                margin: 50px 10px;
                padding: 20px;
            }

            h2 {
                font-size: 1.5rem;
            }

            button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Select Movie Language</h2>
    <form action="/movieReportLanguage" method="post">
        <label for="languages" class="form-label">Choose a Movie Language:</label>
        <select id="languages" name="languages" class="form-select">
            <c:forEach var="language" items="${languageSet}">
                <option value="${language}">${language}</option>
            </c:forEach>
        </select>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
