<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Home Page</title>
  <style>
   body {
      margin: 0;
      padding: 0;
      background-image: url("https://images.pexels.com/photos/4427908/pexels-photo-4427908.jpeg?auto=compress&cs=tinysrgb&w=600");
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh;
    }
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.8); /* 80% opacity, change the last value to adjust transparency */
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .background-video {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      z-index: -1;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 50px;
    }

    table th, table td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    table th {
      background-color: #f2f2f2;
    }

    table tr:hover {
      background-color: #f5f5f5;
    }

    .link {
      color: #007bff;
      text-decoration: none;
    }

    /* Your previous CSS styles here */
  </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
<video class="background-video" autoplay loop muted>
	        <source src="videos/view.mp4" type="video/mp4">
	    </video>
  <div class="container">
    <h1>Employee List</h1>

  <form method="get" action="<%= request.getRequestURI() %>">
  <h2 for="searchId">Search by Employee ID:</h2>
  <input type="text" id="searchId" name="searchId" placeholder="Enter Employee ID">
  <input type="submit" value="Search">
</form>

    <table>
      <tr>
        <th>Employee Id</th>
        <th>Employee Name</th>
        <th>Employee Email</th>
        <th>Employee Course</th>
      </tr>

      <%  
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/project";
        String username = "root";
        String passwordDB = "password@123";

        try {
          // Establish database connection
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection(url, username, passwordDB);

          // Get the search parameter from the URL
          String searchId = request.getParameter("searchId");

          // Modify the SQL query to include the search parameter if it's not empty
          String sql;
          if (searchId != null && !searchId.isEmpty()) {
            sql = "SELECT id, name, email, courses FROM employee WHERE id = " + searchId;
          } else {
            sql = "SELECT id, name, email, courses FROM employee";
          }

          // Retrieve employee details from the database
          Statement statement = conn.createStatement();
          ResultSet resultSet = statement.executeQuery(sql);

          while (resultSet.next()) {
            // Retrieve the values from the result set
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            String courses = resultSet.getString("courses");

      %>
            <tr>
              <td><%= id %></td>
              <td><a href="addsucess.jsp?id=<%= id %>"><%= name %></a></td>
              <td><%= email %></td>
              <td><%= courses %></td>
            </tr>
      <%  
          }

          // Close database connection
          resultSet.close();
          statement.close();
          conn.close();
        } catch (Exception e) {
          e.printStackTrace();
          // Handle any exceptions here
        }
      %>
    </table>
  </div>
</body>
</html>
