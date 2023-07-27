<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Navigation Bar</title>
  <style>
    body {
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #333;
      overflow: hidden;
    }

    .navbar a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 18px;
    }

    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }

    .navbar a.active {
      background-color: #4CAF50;
      color: white;
    }
  </style>
</head>
<body>
  <div class="navbar">
    <a href="home.jsp">Home</a>
    <a href="registeremployee.jsp">Add Employee</a>
    <a href="deletelanding.jsp">Delete Employee</a>
    <a href="updatelanding.jsp">Update Employee</a>
    <a href="viewemployee.jsp">View Employee</a>
    <a href="profile.jsp">Profile</a>
    <a href="logout.jsp">Logout</a>
  </div>
</body>
</html>
