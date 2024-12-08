<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Deficiency Report</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center"><u>Nutrient Deficiency Report</u></h2>
        <ul class="list-group mt-3">
            <c:forEach var="deficiency" items="${report}">
                <li class="list-group-item">${deficiency}</li>
            </c:forEach>
        </ul>

        <!-- Back to Admin Home -->
        <a href="adminhome" class="btn btn-primary btn-block mt-3">Back to Admin Home</a>
    </div>
</body>
</html>
