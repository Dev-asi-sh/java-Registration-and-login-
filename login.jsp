<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #E6E6FA;
            font-family: 'Arial', sans-serif;
        }
        .form-container {
            max-width: 400px;
            margin: 80px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <div class="form-header">
        <h3 style="color:blue">Login</h3>
    </div>

    <form action="login" method="POST">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" name="email1" id="email" class="form-control" required />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="pass1" id="password" class="form-control" required />
        </div>

        <button type="submit" class="submit-btn">Login</button>
    </form>

    <p class="text-center mt-3">
        Don't have an account? <a href="register.jsp">Register Here</a>
    </p>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
