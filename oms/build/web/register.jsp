<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Login Page</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#movie_list.jsp">Catalogue</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#catalogue.jsp">Login</a>
                </li>
            </ul>
        </nav>

        <br>

        <div class="container w-50">

            <h2>Register</h2>
            <form action="RegisterServlet" method="post">
                
                <div class="form-group">
                    <label for="username">Full Name:</label>
                    <input type="username" class="form-control" id="name" placeholder="Enter your full name" name="name" required>
                </div>
                
                <div class="form-group">
                    <label for="username">Email:</label>
                    <input class="form-control" id="email" placeholder="Enter your email address" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter a password" name="password" required>
                </div>
                
                <div class="form-group">
                    <label for="username">Phone number:</label>
                    <input type="username" class="form-control" id="phone" placeholder="Enter your 10 digit phone number" name="phone" required>
                </div>
                
                <div>
                    <p class="text-danger"><span class="error"></span><p>
                </div>
                
                <button type="submit" class="btn btn-primary">Register</button>
                <button type="button" class="btn btn-danger"onclick="location.href = 'index.jsp'">Cancel</button>
                
                <br>
                <br>
                <button type="button" class="btn btn-secondary"onclick=" location.href = 'login.jsp'">login</button>
             
            </form>
        </div>


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>