<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    String user = (String) sessionObj.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="text-center">
    <div class="container mt-5">
        <h2>Welcome, <%= user %> </h2>
        <p>You have successfully logged in.</p>
        <a href="logout" class="btn btn-danger">Logout</a>
    </div>
</body>
</html>
