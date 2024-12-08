<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .user-card {
            width: 18rem;
            margin: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }
        .user-card:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .user-card .card-body {
            text-align: center;
        }
        .user-card .btn-danger {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">All Registered Users</h2>

        <!-- Display total number of users -->
        <p class="text-center">Total Users: <c:out value="${userList.size()}"></c:out></p>

        <div class="card-container">
            <!-- Loop through the userList to display user data -->
            <c:forEach var="user" items="${userList}">
                <div class="card user-card">
                    <div class="card-body">
                        <h5 class="card-title">${user.name}</h5>
                        <p class="card-text">Email: ${user.email}</p>
                        <p class="card-text">Contact: ${user.contact}</p>
                        <!-- Action to delete the user -->
                        <a href="deleteuser?id=${user.id}" class="btn btn-danger btn-sm">Delete</a>
                    </div>
                </div>
            </c:forEach>
        </div>
        
        <a href="adminhome" class="btn btn-primary btn-block mt-3">Back to Admin Home</a>
    </div>
</body>
</html>
