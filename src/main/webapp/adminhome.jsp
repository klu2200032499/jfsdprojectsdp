<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home - Dietify Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
        }
        .navbar {
            background-color: #ffffff !important;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .navbar-brand {
            color: #2c3e50 !important;
            font-weight: bold;
        }
        .nav-link {
            color: #34495e !important;
            transition: color 0.3s ease;
        }
        .nav-link:hover {
            color: #3498db !important;
        }
        .dashboard-card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .dashboard-card:hover {
            transform: translateY(-5px);
        }
        .btn-custom {
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="adminhome">
                <img src="/path/to/logo.png" alt="Dietify" height="30" class="d-inline-block align-top">
                Dietify Admin
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <!-- Home Link -->
                    <li class="nav-item">
                        <a class="nav-link active" href="adminhome">Home</a>
                    </li>

                    <!-- Nutritionist Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="nutritionistDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Nutritionist
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="nutritionistDropdown">
                            <li><a class="dropdown-item" href="addnutritionist">Add Nutritionist</a></li>
                            <li><a class="dropdown-item" href="viewallnutritionists">View All Nutritionists</a></li>
                        </ul>
                    </li>

                    <!-- User Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Users
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="userreg">Add User</a></li>
                            <li><a class="dropdown-item" href="viewallusers">View All Users</a></li>
                        </ul>
                    </li>

                    <!-- Reports Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="reportsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Reports
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="reportsDropdown">
                            <li><a class="dropdown-item" href="nutrientDeficiencyReport">Nutrient Deficiency Report</a></li>
                            <li><a class="dropdown-item" href="userTrendsReport">User Trends Report</a></li>
                        </ul>
                    </li>

                    <!-- Logout Link -->
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="adminlogout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 text-center mb-5">
                <h2 class="display-6">Welcome, Admin</h2>
                <p class="text-muted">Manage your Dietify platform with ease</p>
            </div>
        </div>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="card dashboard-card text-center p-4">
                    <div class="card-body">
                        <h5 class="card-title mb-3">User Management</h5>
                        <a href="viewallusers" class="btn btn-primary btn-custom w-100">View All Users</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card dashboard-card text-center p-4">
                    <div class="card-body">
                        <h5 class="card-title mb-3">Nutritionist Management</h5>
                        <a href="addnutritionist" class="btn btn-success btn-custom w-100">Add Nutritionist</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card dashboard-card text-center p-4">
                    <div class="card-body">
                        <h5 class="card-title mb-3">User Status</h5>
                        <a href="updateuserstatus" class="btn btn-info btn-custom w-100">Update User Status</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Report Generation Section -->
        <div class="row mt-4 g-4">
            <div class="col-md-6">
                <div class="card dashboard-card text-center p-4">
                    <div class="card-body">
                        <h5 class="card-title mb-3">Nutrient Analysis</h5>
                        <a href="nutrientDeficiencyReport" class="btn btn-warning btn-custom w-100">Generate Nutrient Deficiency Report</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card dashboard-card text-center p-4">
                    <div class="card-body">
                        <h5 class="card-title mb-3">User Analytics</h5>
                        <a href="userTrendsReport" class="btn btn-warning btn-custom w-100">Generate User Trends Report</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>