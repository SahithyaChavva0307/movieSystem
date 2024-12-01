<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .error-card {
            background: white;
            border: 1px solid #dee2e6;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 30px;
            max-width: 500px;
            text-align: center;
        }

        .error-card h1 {
            font-size: 4rem;
            color: #dc3545;
        }

        .error-card p {
            font-size: 1.2rem;
            color: #6c757d;
        }

        .error-card a {
            margin-top: 20px;
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        .error-card a:hover {
            background-color: #0056b3;
        }

        .footer {
            margin-top: 20px;
            font-size: 0.9rem;
            color: #adb5bd;
        }
    </style>
</head>
<body>
    <div class="error-card">
        <h1>🚫</h1>
        <h3>Error Occurred</h3>
        <p>${error}</p>
        <a href="/cancelTicket" class="btn btn-primary">Go Back to Home</a>
        <p class="footer">Need help? Contact support at <a href="mailto:support@moviebookingsystem.com">support@moviesystem.com</a></p>
    </div>

    <!-- Bootstrap JS (Optional for some components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
