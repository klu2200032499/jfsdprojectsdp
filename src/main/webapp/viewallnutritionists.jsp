<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Nutritionists</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS for Project Styling -->
    <link rel="stylesheet" href="style.css" /> <!-- Your custom styles -->
    <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .nutritionist-card {
            width: 18rem;
            margin: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }
        .nutritionist-card:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .nutritionist-card .card-body {
            text-align: center;
        }
        .nutritionist-card .btn-danger {
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <!-- Admin Navbar -->
    <nav class="navbar navbar-expand-lg light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="adminhome">Admin Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link active" href="adminhome">Home</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="nutritionistDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Nutritionist
                        </a>
                        <div class="dropdown-menu" aria-labelledby="nutritionistDropdown">
                            <a class="dropdown-item" href="addnutritionist">Add Nutritionist</a>
                            <a class="dropdown-item" href="viewallnutritionists">View All Nutritionists</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Users
                        </a>
                        <div class="dropdown-menu" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="adduser">Add User</a>
                            <a class="dropdown-item" href="viewallusers">View All Users</a>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link text-danger" href="adminlogout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
        <h3 class="text-center"><u>View All Nutritionists</u></h3>
        <p class="text-center">Total Nutritionists: <c:out value="${nutritionistCount}"></c:out></p>

        <!-- Card Container -->
        <div class="card-container">
            <!-- Loop through the nutritionistList to display nutritionist data in cards -->
            <c:forEach items="${nutritionistList}" var="nutritionist">
                <div class="card nutritionist-card">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${nutritionist.name}"/></h5>
                        <p class="card-text"><strong>Expertise:</strong> <c:out value="${nutritionist.expertise}"/></p>
                        <p class="card-text"><strong>Email:</strong> <c:out value="${nutritionist.email}"/></p>
                        <p class="card-text"><strong>Contact:</strong> <c:out value="${nutritionist.contact}"/></p>
                        <!-- Action button to delete the nutritionist -->
                        <a href="deletenutritionist?id=${nutritionist.id}" class="btn btn-danger btn-sm">Delete</a>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- Back to Admin Home -->
        <a href="adminhome" class="btn btn-primary btn-block mt-3">Back to Admin Home</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
