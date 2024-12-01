<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancellation Successful</title>

    <!-- Google Fonts for Modern Typography -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #4CAF50, #8BC34A);
            margin: 0;
            padding: 0;
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        /* Background Animation */
        @keyframes backgroundMove {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
        }

        body {
            background-size: 200% 200%;
            animation: backgroundMove 12s ease infinite;
        }

        /* Container for content */
        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0px 8px 30px rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(10px);
            max-width: 450px;
            width: 100%;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        /* Hover effect on container */
        .container:hover {
            transform: translateY(-10px);
        }

        h2 {
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 20px;
            letter-spacing: 1px;
            color: #ffffff;
        }

        p {
            font-size: 1.2rem;
            margin-bottom: 20px;
            color: #e0e0e0;
            line-height: 1.5;
        }

        /* Button styling */
        a {
            text-decoration: none;
            font-size: 1.1rem;
            color: #fff;
            background-color: #ff5722;
            padding: 12px 25px;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        a:hover {
            background-color: #e64a19;
            transform: scale(1.1);
        }

        a:focus {
            outline: none;
            box-shadow: 0px 0px 20px rgba(0, 255, 0, 0.5);
        }

        /* Responsive design for small screens */
        @media (max-width: 600px) {
            h2 {
                font-size: 2rem;
            }
            p {
                font-size: 1rem;
            }
            a {
                padding: 10px 20px;
            }
        }

        /* Footer Section */
        footer {
            position: absolute;
            bottom: 20px;
            width: 100%;
            text-align: center;
            font-size: 1rem;
            color: rgba(255, 255, 255, 0.7);
        }
    </style>
</head>
<body>

    <div class="container">
        <div>
            <h2>Cancellation Successful</h2>
            <p>${message}</p>
            <a href="/index">Return to Home</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 MovieBooking. All Rights Reserved.</p>
    </footer>

</body>
</html>
