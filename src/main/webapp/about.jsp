<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us - Dietify</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #4a90e2;
            --secondary-color: #50c878;
            --bg-light: #f8f9fa;
            --text-dark: #2c3e50;
        }

        * {
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        body {
            font-family: 'Inter', 'Arial', sans-serif;
            background-color: var(--bg-light);
            color: var(--text-dark);
            line-height: 1.6;
        }

        .navbar {
            background: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            padding: 1rem 0;
        }

        .navbar-brand {
            font-weight: 900;
            color: var(--primary-color) !important;
            font-size: 1.5rem;
        }

        .nav-link {
            color: var(--text-dark) !important;
            position: relative;
            font-weight: 600;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 50%;
            background-color: var(--primary-color);
            transition: all 0.3s ease;
        }

        .nav-link:hover::after {
            width: 100%;
            left: 0;
        }

        .login-buttons .btn {
            margin: 0 0.5rem;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .login-buttons .btn i {
            margin-right: 0.3rem;
        }

        .team-member {
            text-align: center;
            margin-bottom: 2rem;
            transition: transform 0.3s ease;
        }

        .team-member:hover {
            transform: translateY(-10px);
        }

        .team-member img {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .team-member:hover img {
            transform: scale(1.05);
        }

        .team-member h5 {
            margin-top: 1rem;
            color: var(--primary-color);
        }

        .footer {
            background-color: var(--text-dark);
            color: white;
            padding: 2rem 0;
        }

        .footer a {
            color: rgba(255,255,255,0.7);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: white;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="/">Dietify</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">About</a>
                        </li>
                    </ul>
                 
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main class="container mt-5">
        <h2 class="text-center mb-4">About Dietify</h2>
        <p class="lead text-center mb-5">
            Dietify is a platform dedicated to helping individuals achieve their health and wellness goals through personalized diet plans, expert advice from certified nutritionists, and detailed tracking of nutrition intake.
        </p>

        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow-sm mb-4">
                    <div class="card-body">
                        <h4 class="card-title text-center mb-3">Why Choose Us?</h4>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Food Suggestion Recommendation</li>
                            <li class="list-group-item">Expert guidance from certified nutritionists</li>
                            <li class="list-group-item">Nutrient Estimation</li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Team Members Section -->
        <h3 class="text-center mt-5 mb-4">Meet Our Team</h3>
        <div class="row">
            <!-- Team Member 1 -->
            <div class="col-md-4 team-member">
                <img src="https://www.w3schools.com/w3images/avatar2.png" alt="Devesh" class="img-fluid">
                <h5 class="mt-3">Devesh</h5>
                <p class="text-muted"><strong>Role:</strong> Team Lead</p>
                <p class="text-center">Devesh is responsible for overseeing the project, ensuring effective collaboration and guiding the team to success.</p>
            </div>

            <!-- Team Member 2 -->
            <div class="col-md-4 team-member">
                <img src="https://www.w3schools.com/w3images/avatar2.png" alt="Kushal" class="img-fluid">
                <h5 class="mt-3">Kushal</h5>
                <p class="text-muted"><strong>Role:</strong> Team Member</p>
                <p class="text-center">Kushal focuses on developing key features and ensuring the technical aspects of the project are implemented smoothly.</p>
            </div>

            <!-- Team Member 3 -->
            <div class="col-md-4 team-member">
                <img src="https://www.w3schools.com/w3images/avatar6.png" alt="Jahnavi" class="img-fluid">
                <h5 class="mt-3">Jahnavi</h5>
                <p class="text-muted"><strong>Role:</strong> Team Member</p>
                <p class="text-center">Jahnavi works on the software development aspects, focusing on building a seamless and efficient user experience.</p>
            </div>
        </div>

        <div class="text-center mt-5">
            <a href="/" class="btn btn-primary">
                <i class="fas fa-home me-2"></i>Back to Home
            </a>
        </div>
    </main>

    <!-- Footer Section -->
    <footer class="footer mt-5">
        <div class="container text-center">
            <p class="mb-3">&copy; 2024 Dietify. All Rights Reserved.</p>
            <div class="d-flex justify-content-center gap-3">
                <a href="about">About Us</a>
                <a href="/privacy">Privacy Policy</a>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>