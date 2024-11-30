<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1><u>Show Time Report</u></h1>
		<br/>
		<h2>
			<table border=2>
				
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Premium Price</th>
					<th>Royal Price</th>
					<th>Show Time Deletion</th>
                    <th>Show Time Updation</th>
				</tr>
				<c:forEach items="${showTimeList}" var="showtime">
					<tr>
						<td>${showtime.showTimeId}</td>
						<td>${showtime.showTimeName}</td>
						<td>${showtime.showTimePremierePrice}</td>
						<td>${showtime.showTimeRoyalPrice}</td>
						<td><a href="/showTimeDeletion/${showtime.showTimeId}">Delete</a></td>
                        <td><a href="/showTimeUpdation/${showtime.showTimeId}">Update</a></td>
					</tr>
				</c:forEach>
			</table>
		</h2>
		<br/>
		<h3><a href="/index">Go To Home Page</a></h3>
	</div>
</body>
</html> -->



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Time Report</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f0f2f5, #e6ebf0);
            font-family: Arial, sans-serif;
            color: #495057;
        }
        .container {
            margin-top: 50px;
        }
        .report-title {
            color: #495057;
            font-weight: bold;
            text-transform: uppercase;
            border-bottom: 3px solid #007bff;
            padding-bottom: 10px;
            display: inline-block;
        }
        .table {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table th {
            background-color: #007bff;
            color: white;
            text-align: center;
            font-weight: 500;
        }
        .table td {
            text-align: center;
            color: #495057;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f9fafb;
        }
        .action-link {
            padding: 5px 10px;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            text-decoration: none;
        }
        .btn-delete {
            background-color: #dc3545;
        }
        .btn-delete:hover {
            background-color: #c82333;
            text-decoration:none;
            color:white;
        }
        .btn-update {
            background-color: #17a2b8;
        }
        .btn-update:hover {
            background-color: #138496;
            text-decoration:none;
            color:white;
        }
        .back-link {
            color: #007bff;
            font-weight: bold;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center mb-4">
            <h1 class="report-title">Show Time Report</h1>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Premium Price</th>
                        <th>Royal Price</th>
                        <th>Show Time Deletion</th>
                        <th>Show Time Updation</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${showTimeList}" var="showtime">
                        <tr>
                            <td>${showtime.showTimeId}</td>
                            <td>${showtime.showTimeName}</td>
                            <td>${showtime.showTimePremierePrice}</td>
                            <td>${showtime.showTimeRoyalPrice}</td>
                            <td>
                                <a href="/showTimeDeletion/${showtime.showTimeId}" 
                                   class="action-link btn-delete">Delete</a>
                            </td>
                            <td>
                                <a href="/showTimeUpdation/${showtime.showTimeId}" 
                                   class="action-link btn-update">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="text-center mt-4">
            <a href="/index" class="back-link">Go To Home Page</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

