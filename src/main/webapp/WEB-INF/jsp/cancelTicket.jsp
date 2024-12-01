<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancel Ticket</title>
    
    <!-- Google Fonts for Modern Typography -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0093E9, #80D0C7);
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
            animation: backgroundMove 10s ease infinite;
        }

        /* Container for form */
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

        /* Hover effect on form container */
        .container:hover {
            transform: translateY(-10px);
        }

        h2 {
            font-size: 2.2rem;
            font-weight: 600;
            margin-bottom: 20px;
            letter-spacing: 1px;
            color: #ffffff;
        }

        /* Input field styling */
        input[type="text"] {
            width: 90%;
            padding: 15px;
            margin: 15px 0;
            border: 2px solid #4CAF50;
            border-radius: 8px;
            font-size: 1.1rem;
            outline: none;
            transition: all 0.3s ease;
            background-color: transparent;
            color: #fff;
        }

        input[type="text"]:focus {
            border-color: #2dbe69;
            background-color: rgba(255, 255, 255, 0.2);
        }

        /* Button Styles */
        button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 14px 30px;
            font-size: 1.2rem;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            background-color: #218838;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        button:focus {
            outline: none;
            box-shadow: 0px 0px 20px rgba(0, 255, 0, 0.5);
        }

        /* Responsive design for small screens */
        @media (max-width: 600px) {
            h2 {
                font-size: 1.8rem;
            }
            input[type="text"] {
                width: 85%;
            }
            button {
                width: 100%;
            }
        }

        /* Footer Section */
        footer {
            position: absolute;
            bottom: 30px;
            width: 100%;
            text-align: center;
            font-size: 1rem;
            color: rgba(255, 255, 255, 0.7);
            letter-spacing: 1px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Enter the Ticket ID</h2>
        <form action="/aboutCancel">
            <input type="text" name="ticket" placeholder="Enter your Ticket ID" required><br/>
            <button type="submit">Submit</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2024 MovieBooking. All Rights Reserved.</p>
    </footer>

</body>
</html>
