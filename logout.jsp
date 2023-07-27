<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #f2f2f2;
        }

        .background-video {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        .logout-container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }

        .logout-message {
            font-size: 18px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <video class="background-video" autoplay loop muted>
        <source src="videos/pexels_videos_1943483 (2160p).mp4" type="video/mp4">
        <!-- Add alternative formats here if needed -->
    </video>

    <div class="logout-container">
        <div class="logout-message">Successfully logged out</div>
        <a href="login.jsp">Click here to login</a>
    </div>
</body>
</html>
