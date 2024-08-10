<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        /* Header Styles */
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
        }

        .header .logo {
            display: flex;
            align-items: center;
        }

        .header .logo img {
            height: 30px;
            margin-right: 10px;
        }

        .header nav {
            display: flex;
            align-items: center;
        }

        .header nav a {
            margin-right: 20px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .header nav a:hover {
            color: #007bff;
        }

        .header .search {
            display: flex;
            align-items: center;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 5px 10px;
        }

        .header .search input {
            border: none;
            outline: none;
            padding: 5px;
        }

        .header .auth-buttons a {
            margin-left: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 8px 15px;
            border-radius: 4px;
        }

        .header .auth-buttons a:hover {
            background-color: #0056b3;
        }

        /* Sidebar Styles */
        .main-container {
            display: flex;
            flex: 1;
            overflow: hidden;
        }

        .sidebar {
            width: 200px;
            background-color: #f8f9fa;
            padding: 20px;
            border-right: 1px solid #ddd;
            height: 100%;
            overflow-y: auto;
        }

        .sidebar a {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        .sidebar a img {
            margin-right: 10px;
        }

        .sidebar a:hover {
            color: #007bff;
        }

        .sidebar .section-title {
            margin-top: 20px;
            margin-bottom: 10px;
            font-size: 14px;
            font-weight: bold;
            color: #555;
        }

        .content {
            flex-grow: 1;
            padding: 20px;
            overflow-y: auto;
        }

    </style>
</head>
<body>

    <!-- Header Section -->
    <header class="header">
        <div class="logo">
           
            <b href="#">Map Of Programmers</b>
        </div>
        <nav>
            <a href="<%= request.getContextPath() %>/about.jsp">About</a>
            <a href="<%= request.getContextPath() %>/products.jsp">Products</a>
            <a href="<%= request.getContextPath() %>/overflowAI.jsp">OverflowAI</a>
        </nav>
        <div class="search">
            <form action="<%= request.getContextPath() %>/search.jsp" method="get">
                <input type="text" name="query" placeholder="Search...">
            </form>
        </div>
        <div class="auth-buttons">
            <a href="<%= request.getContextPath() %>/login.jsp">Log in</a>
            <a href="<%= request.getContextPath() %>/signup.jsp">Sign up</a>
        </div>
    </header>

    <!-- Main Container (Sidebar + Content) -->
    <div class="main-container">
        <!-- Sidebar Section -->
        <div class="sidebar">
            <a href="<%= request.getContextPath() %>/home.jsp">
               Home
            </a>
            <a href="<%= request.getContextPath() %>/questions.jsp">
                Questions
            </a>
            <a href="<%= request.getContextPath() %>/tags.jsp">
                Tags
            </a>
            <a href="<%= request.getContextPath() %>/users.jsp">
                 Users
            </a>
            <a href="<%= request.getContextPath() %>/companies.jsp">
                Companies
            </a>

            <div class="section-title">LABS</div>
            <a href="<%= request.getContextPath() %>/jobs.jsp">
                 Jobs
            </a>
            <a href="<%= request.getContextPath() %>/discussions.jsp">
                 Discussions
            </a>

            <div class="section-title">COLLECTIVES</div>
            <a href="<%= request.getContextPath() %>/collectives.jsp">
                Explore all Collectives
            </a>
        </div>

        <!-- Content Section -->
        <div class="content">
            <!-- Your main content goes here -->
        </div>
    </div>

</body>
</html>
