<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" import="java.util.*" import="uts.isd.model.*" pageEncoding="UTF-8"%>
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
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Catalogue</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Login</a>
                </li>
            </ul>
        </nav>
        <br>

        <div class="container w-50">
            <h2>User Registration Failed</h2>
            <p class="txt txt-danger"><c:if test="${existErr!=null}"><span class="error"><c:out value="${existErr}"/></span></c:if></p>
            <p class="txt txt-danger"><c:if test="${emailErr!=null}"><span class="error"><c:out value="${emailErr}"/></span></c:if></p>
            <p class="txt txt-danger"><c:if test="${passwordErr!=null}"><span class="error"><c:out value="${passwordErr}"/></span></c:if></p>
            <p class="txt txt-danger"><c:if test="${phoneErr!=null}"><span class="error"><c:out value="${phoneErr}"/></span></c:if></p>

                <br>


                <button class="btn btn-primary" type="button" onclick="location.href = 'register.jsp'" > Return to Register Page </button>
                <button class="btn btn-secondary" type="button" onclick="location.href = 'index.jsp'" > Return to Home Page </button>
                <br>
                <br>
                <span class="error"><c:if test="${existErr!=null}"><button type="button" class="btn btn-secondary"onclick="location.href = 'login.jsp'">Go to Login Page</button></span></c:if></span>
    </div>

</body>
</html>
