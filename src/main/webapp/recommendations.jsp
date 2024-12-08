<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Recommendations</title>
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
                            <a class="nav-link" href="logout">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main Content -->
    <div class="container mt-5">
        <h3 class="text-center mb-4">Recommendations</h3>

        <!-- Recommendations Table -->
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Recommendation</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="recommendation" items="${recommendationList}">
                    <tr>
                        <td>${recommendation.userId}</td>
                        <td>${recommendation.userName}</td>
                        <td>${recommendation.recommendationText}</td>
                        <td>
                            <span class="badge 
                                <c:choose>
                                    <c:when test="${recommendation.status == 'Accepted'}">bg-success</c:when>
                                    <c:when test="${recommendation.status == 'Rejected'}">bg-danger</c:when>
                                    <c:otherwise>bg-secondary</c:otherwise>
                                </c:choose>">
                                ${recommendation.status}
                            </span>
                        </td>
                        <td>
                            <form:form action="updateRecommendationStatus" method="post" class="d-inline">
                                <input type="hidden" name="recommendationId" value="${recommendation.id}" />
                                <button type="submit" name="status" value="Accepted" class="btn btn-success btn-sm me-1">Accept</button>
                                <button type="submit" name="status" value="Rejected" class="btn btn-danger btn-sm">Reject</button>
                            </form:form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
