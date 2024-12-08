<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration - Diet & Nutrition</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
        }
        .registration-container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            padding: 40px;
            margin-top: 50px;
        }
        .form-control {
            border-radius: 8px;
            padding: 12px;
            background-color: #f8f9fa;
        }
        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 0 0.2rem rgba(40,167,69,0.25);
        }
        .btn-register {
            background-color: #28a745;
            border: none;
            border-radius: 8px;
            padding: 12px;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .btn-register:hover {
            background-color: #218838;
            transform: translateY(-2px);
        }
        .navbar {
            background: linear-gradient(to right, #28a745, #20c997);
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .navbar-brand {
            color: white !important;
            font-weight: bold;
        }
        .nav-link {
            color: rgba(255,255,255,0.8) !important;
            transition: color 0.3s ease;
        }
        .nav-link:hover {
            color: white !important;
        }
        footer {
            background: linear-gradient(to right, #28a745, #20c997);
            color: white;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Dietify</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 registration-container">
                <h2 class="text-center mb-4">Create Your Account</h2>
                <form action="insertuser" method="post">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="gender" class="form-label">Gender</label>
                            <select class="form-control" id="gender" name="gender" required>
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="dateOfBirth" class="form-label">Date of Birth</label>
                            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="height" class="form-label">Height (cm)</label>
                            <input type="number" class="form-control" id="height" name="height" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="weight" class="form-label">Weight (kg)</label>
                            <input type="number" class="form-control" id="weight" name="weight" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="contact" class="form-label">Contact Number</label>
                            <input type="text" class="form-control" id="contact" name="contact" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="goal" class="form-label">Health Goal</label>
                            <select class="form-control" id="goal" name="goal">
                                <option value="">Select Goal</option>
                                <option value="Maintain weight">Maintain Weight</option>
                                <option value="Lose weight">Lose Weight</option>
                                <option value="Gain muscle">Gain Muscle</option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="activityLevel" class="form-label">Activity Level</label>
                            <select class="form-control" id="activityLevel" name="activityLevel" required>
                                <option value="">Select Activity Level</option>
                                <option value="Sedentary">Sedentary</option>
                                <option value="Moderate">Moderate</option>
                                <option value="Active">Active</option>
                            </select>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="dietaryPreferences" class="form-label">Dietary Preferences</label>
                        <input type="text" class="form-control" id="dietaryPreferences" name="dietaryPreferences">
                    </div>

                    <button type="submit" class="btn btn-register w-100 mt-3">Create Account</button>
                </form>
            </div>
        </div>
    </div>

    <footer class="text-center py-4 mt-5">
        <p class="mb-0">&copy; 2024 Dietify. All Rights Reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>