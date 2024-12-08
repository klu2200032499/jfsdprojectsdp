<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs by Nutrition Focus</title>
</head>
<body>
    <h2>Blogs Focused on Nutrition</h2>
    <form action="/api/blogs/nutrition-focus" method="get">
        <label for="nutritionFocus">Enter Nutrition Focus:</label>
        <input type="text" id="nutritionFocus" name="nutritionFocus">
        <input type="submit" value="Search">
    </form>

    <ul>
        <c:forEach var="blog" items="${blogs}">
            <li>
                <strong>${blog.title}</strong><br>
                ${blog.content}<br>
                <em>Nutrition Focus: ${blog.nutritionFocus}</em><br><br>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
