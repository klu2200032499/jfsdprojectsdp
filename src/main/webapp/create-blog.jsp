<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Blog Post</title>
</head>
<body>
    <h2>Create New Blog Post</h2>
    <form action="/api/blogs/create/1" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>

        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br><br>

        <label for="nutritionFocus">Nutrition Focus:</label>
        <input type="text" id="nutritionFocus" name="nutritionFocus" required><br><br>

        <input type="submit" value="Create Blog Post">
    </form>
</body>
</html>
