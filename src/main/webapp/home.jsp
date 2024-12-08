<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dietify</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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

        .feature-card {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            transition: all 0.4s ease;
            transform-style: preserve-3d;
        }

        .feature-card:hover {
            transform: translateY(-15px) rotateX(10deg);
            box-shadow: 0 15px 40px rgba(0,0,0,0.12);
        }

        .feature-card-icon {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 1.5rem;
            text-align: center;
            clip-path: polygon(0 0, 100% 0, 100% 80%, 0 100%);
        }

        .cta-section {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            border-radius: 15px;
            overflow: hidden;
        }

        .footer {
            background-color: var(--text-dark);
            color: white;
        }

        .register-section .btn {
            margin: 0 0.5rem;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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
        <div class="row">
            <div class="col-12">
                <h1 class="text-center mb-4">Welcome to Dietify</h1>
                <p class="lead text-center mb-5">
                    Your health is important! Manage your diet, find helpful tips, and get personalized health advice from certified nutritionists.
                </p>

                <!-- Login Buttons Section -->
                <section class="text-center mb-5">
                    <h2 class="mb-4">Login</h2>
                    <div class="login-buttons">
                        <a href="adminlogin" class="btn btn-primary">
                            <i class="fas fa-user-shield"></i>Admin Login
                        </a>
                        <a href="userlogin" class="btn btn-success">
                            <i class="fas fa-user"></i>User Login
                        </a>
                        <a href="nutritionistlogin" class="btn btn-info">
                            <i class="fas fa-stethoscope"></i>Nutritionist Login
                        </a>
                    </div>
                </section>

                <!-- Registration Section -->
                <section class="text-center mb-5">
                    <h2 class="mb-4">Register</h2>
                    <div class="register-section">
                        <a href="userreg" class="btn btn-outline-primary">
                            <i class="fas fa-user-plus"></i>Register as User
                        </a>
                        <a href="addnutritionist" class="btn btn-outline-success">
                            <i class="fas fa-heartbeat"></i>Register as Nutritionist
                        </a>
                    </div>
                </section>

                <!-- How it Works Section -->
                <section>
                    <h2 class="text-center mb-4">How It Works</h2>
                    <p class="text-center mb-5">
                        Our platform connects you with experts who help you manage your health and diet through personalized plans and advice.
                    </p>
                    <div class="row g-4">
                        <div class="col-md-4">
                            <div class="card feature-card text-center p-4">
                                <div class="feature-card-icon">
                                    <i class="fas fa-clipboard-list"></i>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Food Suggestion Recommendation</h5>
                                    <p class="card-text">Offer food suggestions to address identified nutrient deficiencies.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card feature-card text-center p-4">
                                <div class="feature-card-icon">
                                    <i class="fas fa-user-md"></i>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Expert Nutritionists</h5>
                                    <p class="card-text">Consult certified nutritionists for advice and support on your health journey.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card feature-card text-center p-4">
                                <div class="feature-card-icon">
                                    <i class="fas fa-chart-line"></i>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Nutrient Estimation</h5>
                                    <p class="card-text"> Analyze logged meals to estimate macro and micronutrient intake accurately.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Call-to-action Section -->
                <section class="cta-section mt-5 rounded">
                    <div class="container">
                        <h3 class="mb-3">Join Us Today</h3>
                        <p class="mb-4">Sign up now to get personalized advice, diet plans, and track your progress toward better health!</p>
                        <div>
                            <a href="userreg" class="btn btn-light btn-lg me-3">Register as User</a>
                            <a href="addnutritionist" class="btn btn-outline-light btn-lg">Become a Nutritionist</a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>

    <!-- Footer Section -->
    <footer class="footer text-white py-4 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 Dietify. All Rights Reserved.</p>
            <div class="d-flex justify-content-center gap-3">
                <a href="about" class="text-white text-decoration-none">About Us</a>
                <a href="/privacy" class="text-white text-decoration-none">Privacy Policy</a>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>