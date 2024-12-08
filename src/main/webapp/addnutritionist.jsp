<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Nutritionist - Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Inter', sans-serif;
        }
        .admin-container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
            padding: 40px;
            margin-top: 50px;
        }
        .navbar {
            background: linear-gradient(to right, #4a90e2, #50c878);
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .navbar-brand {
            color: white !important;
            font-weight: bold;
        }
        .form-control {
            border-radius: 8px;
            padding: 12px;
            background-color: #f8f9fa;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #4a90e2;
            box-shadow: 0 0 0 0.2rem rgba(74,144,226,0.25);
        }
        .form-label {
            font-weight: 600;
            color: #495057;
        }
        .btn-primary {
            background-color: #4a90e2;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #357abd;
            transform: translateY(-2px);
        }
        .btn-secondary {
            border-radius: 8px;
            padding: 10px 20px;
        }
        .section-header {
            color: #4a90e2;
            border-bottom: 2px solid #4a90e2;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="adminhome">Dietify Admin Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10 admin-container">
                <h2 class="text-center section-header mb-4">Add New Nutritionist</h2>

                <!-- Form to Add Nutritionist -->
                <form:form modelAttribute="nutritionist" method="post" action="addnutritionist">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <form:input id="name" path="name" class="form-control" required="required" 
                                placeholder="Enter nutritionist's full name"/>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="contact" class="form-label">Contact Number</label>
                            <form:input id="contact" path="contact" class="form-control" required="required"
                                placeholder="Enter contact number"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="email" class="form-label">Email Address</label>
                            <form:input type="email" id="email" path="email" class="form-control" required="required"
                                placeholder="Enter email address"/>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="password" class="form-label">Password</label>
                            <form:password id="password" path="password" class="form-control" required="required"
                                placeholder="Create a secure password"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="expertise" class="form-label">Area of Expertise</label>
                            <form:input id="expertise" path="expertise" class="form-control"
                                placeholder="E.g., Weight Management, Sports Nutrition"/>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="bio" class="form-label">Professional Bio</label>
                            <form:textarea id="bio" path="bio" class="form-control" rows="3"
                                placeholder="Brief professional introduction"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="dietaryRecommendations" class="form-label">Dietary Specializations</label>
                            <form:textarea id="dietaryRecommendations" path="dietaryRecommendations" 
                                class="form-control" rows="3" 
                                placeholder="Describe your dietary recommendation approach"/>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="blogs" class="form-label">Professional Publications</label>
                            <form:textarea id="blogs" path="blogs" class="form-control" rows="3"
                                placeholder="Links or titles of professional articles/blogs"/>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="testimonials" class="form-label">Professional Testimonials</label>
                        <form:textarea id="testimonials" path="testimonials" class="form-control" rows="3"
                            placeholder="Add any professional testimonials or achievements"/>
                    </div>

                    <div class="d-flex justify-content-between mt-4">
                        <button type="submit" class="btn btn-primary flex-grow-1 me-2">
                            <i class="bi bi-plus-circle me-2"></i>Add Nutritionist
                        </button>
                        <button type="reset" class="btn btn-secondary flex-grow-1 ms-2">
                            <i class="bi bi-trash me-2"></i>Clear Form
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>