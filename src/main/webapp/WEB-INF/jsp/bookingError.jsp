<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Error</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .error-container {
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            max-width: 500px;
            text-align: center;
        }
        .error-container h1 {
            font-size: 2rem;
            color: #dc3545;
            margin-bottom: 15px;
        }
        .error-container p {
            font-size: 1.1rem;
            color: #6c757d;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Oops! Booking Failed</h1>
        <!-- Safely display the error message -->
        <p><c:out value="${errorMessage}" /></p>
        <!-- Back button -->
        <a href="/movieReportLanguage" class="btn btn-custom">Go Back and Try Again</a>
    </div>

    <!-- Alert for error message -->
    <c:if test="${not empty errorMessage}">
        <script>
            alert("<c:out value='${errorMessage}' escapeXml='true' />");
        </script>
    </c:if>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
