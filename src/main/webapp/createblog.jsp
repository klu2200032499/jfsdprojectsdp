<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <!-- Navbar -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="nutritionisthome">Diet & Nutrition</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="viewblogs">View Blogs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content -->
    <div class="container mt-5">
        <h3 class="text-center mb-4">Create Blog</h3>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form:form action="saveBlog" method="post" class="border p-4 shadow-sm rounded">
                    <div class="form-group mb-3">
                        <label for="blogTitle" class="form-label">Blog Title</label>
                        <form:input path="title" id="blogTitle" class="form-control" placeholder="Enter Blog Title" required="required" />
                    </div>
                    <div class="form-group mb-3">
                        <label for="blogContent" class="form-label">Blog Content</label>
                        <form:textarea path="content" id="blogContent" class="form-control" rows="6" placeholder="Write your blog here..." required="required"></form:textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit Blog</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
