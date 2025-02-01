<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS for additional styling -->
    <style>
        body {
            background-color: #E6E6FA;
            font-family: 'Arial', sans-serif;
        }
        .form-container {
            max-width: 400px;
            margin: 10px auto;
            padding: 20px;
            max-height:600px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group input[type="radio"] {
            margin-top: 10px;
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
        <h3 style="color:blue">Register</h3>
    </div>

    <form action="register" method="POST" id="register-form">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" name="name1" id="name" class="form-control" required />
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" name="email1" id="email" class="form-control" required />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="pass1" id="password" class="form-control" required />
        </div>

        <div class="form-group">
            <label>Gender:</label><br>
            Female <input type="radio" name="gender1" value="female" required />
            Male <input type="radio" name="gender1" value="male" required />
        </div>

        <div class="form-group">
            <label for="city">City:</label>
            <select name="city1" id="city" class="form-control" required>
                <option>Select City</option>
                <option>Delhi</option>
                <option>Bombay</option>
                <option>Kolkata</option>
                <option>Nasik</option>
                <option>Bangalore</option>
                <option>Hyderabad</option>
            </select>
        </div>

        <button type="submit" class="submit-btn">Register</button>
    </form>

    <p class="text-center mt-3">
        Already have an account? <a href="login.jsp">Login Here</a>
    </p>
</div>

<!-- jQuery, Popper.js, and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Custom JS for form validation -->
<script>
    document.getElementById('register-form').addEventListener('submit', function(event) {
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var password = document.getElementById('password').value;
        var gender = document.querySelector('input[name="gender1"]:checked');
        var city = document.getElementById('city').value;

        if (!name || !email || !password || !gender || !city) {
            alert('Please fill in all fields');
            event.preventDefault();
        }
    });
</script>

</body>
</html>

