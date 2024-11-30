<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Entry Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://static.wixstatic.com/media/1d6090cc4bbf44628dfd82a1979770e8.jpg/v1/fill/w_980,h_490,fp_0.50_0.50,q_90,usm_0.66_1.00_0.01/1d6090cc4bbf44628dfd82a1979770e8.jpg'); 
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff;
        }

        .movie-container {
            background-color: rgba(0, 0, 0, 0.7); /* Darker and more transparent background */
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.6);
            margin: 40px auto;
            max-width: 800px;
            color: #f8f9fa;
        }

        h2 {
            color: #ffcc00; /* Bright yellow for heading */
            text-align: center;
            margin-bottom: 20px;
            font-size: 28px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .form-label {
            font-weight: bold;
            color: #ffcc00; /* Bright yellow for form labels */
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.2); /* Light transparent background */
            border: 1px solid #ffcc00; 
            color: #ffffff;
            border-radius: 5px;
        }

        .form-control:focus {
            background-color: rgba(255, 255, 255, 0.3);
            border-color: #ffcc00;
            color: #ffffff;
        }

        .btn-primary {
            background-color: #ffcc00;
            border-color: #ffcc00;
            width: 100%;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #e6b800;
        }

        .btn-secondary {
            background-color: #343a40;
            border-color: #666;
            color: #ffffff;
            width: 100%;
            border-radius: 5px;
        }

        .btn-secondary:hover {
            background-color: #5c636a;
        }

        .d-grid {
            margin-top: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(0, 0, 0, 0.3); /* Semi-transparent background for the table */
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ffcc00;
            color: #ffffff;
        }

        table th {
            background-color: rgba(255, 255, 255, 0.1); /* Slightly brighter background for headers */
        }

        .showtime-heading {
            color: #ffcc00; /* Bright yellow for Showtime heading */
            font-size: 24px;
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="movie-container">
    <h2>Movie Entry Page</h2>
    <form:form id="movieForm" action="/addMovie" method="post" modelAttribute="movieRecord" class="mt-4">

        <div class="mb-3">
            <label class="form-label">Enter Movie Id</label>
            <form:input path="movieId" id="movieId" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Name</label>
            <form:input id="movieName" path="movieName" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Language</label>
            <form:input path="language" id="language" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Genre</label>
            <form:input path="genre" id="genre" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Duration</label>
            <form:input path="duration" id="duration" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Ratings</label>
            <form:input id="ratings" path="ratings" class="form-control" />
        </div>

        <div class="showtime-heading">
            <h2>ShowTime Entry</h2>
        </div>
        <table>
            <tr>
                <th>Show TimeId</th>
                <th>Premier Seats</th>
                <th>Royal Seats</th>
            </tr>
            <c:forEach var="index" begin="1" end="6">
                <tr>
                    <td>
                        <input list="shows" name="show${index}" class="form-control"/>
                        <datalist id="shows">
                            <c:forEach items="${showTimeList }" var="sid">
                                <option value="${sid}"></option>
                            </c:forEach>
                        </datalist>
                    </td>
                    <td><input type="text" name="premier${index}" value="---" class="form-control"/></td>
                    <td><input type="text" name="royal${index}" value="---" class="form-control"/></td>
                </tr>
            </c:forEach>
        </table>

        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>

    </form:form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
