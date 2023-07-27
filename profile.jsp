<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <style>
        /* Your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #007BFF; /* Blue */
        }

        .profile-details {
            margin-bottom: 20px;
            background-color: #f7f7f7;
            padding: 10px;
            border-radius: 5px;
        }

        .profile-details p {
            margin: 5px 0;
        }

        .dark-mode {
            margin-left: 20px;
        }

        /* Add colorful styles for specific elements */
        .profile-details p:nth-child(2n+1) {
            color: #E84A5F; /* Red */
        }

        .profile-details p:nth-child(2n) {
            color: #3D9970; /* Green */
        }

        /* Add hover effect for the dark mode button */
        .dark-mode:hover {
            cursor: pointer;
            color: #007BFF; /* Blue */
        }
    </style>
    <script>
        function toggleDarkMode() {
            const body = document.body;
            body.classList.toggle("dark-mode");
        }
    </script>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <div class="container">
        <h1>Profile</h1>
        <div class="profile-details">
            <p>Welcome, Koti !</p>
            <p>Email: koti@gmail.com</p>
            <p>Contact: 9090909090</p>
            
            <!-- Add more user details as needed -->
        </div>
    </div>
</body>
</html>
