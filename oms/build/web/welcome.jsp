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

    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;
        String color;

//        if (tos != null) {
//            color = favcol;
//        } else {
//            color = "#AED6F1";
//        }
    %>
        <body>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#catalogue.jsp">Catalogue</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#login.jsp">Login</a>
                </li>
            </ul>
        </nav>

        <br>

        <div class="container w-50">
        <h1>Hello, <%=name%></h1> 
        <h1>User registration complete.</h1>
        <p>Your details:</p>
<!--        <table class ="table table-striped">
            <thead>
                <th>Email: </th>
                <th>Name: </th>
                <th>Phone: </th>
                
            </thead>
            <tbody>
                <tr><%=email%></tr>
                <tr><%=name%></tr>
                <tr><%=phone%></tr>
                
            </tbody>
        </table>-->
        <p>Your Name is: <%=name%></p>
        <p>Your Email is: <%=email%></p>
        <p>Your Phone number is: <%=phone%></p>
        <!--<p>Your User ID is: <%=ID%></p>-->
        <%    
            //Activate the database add-function once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            User user = new User(ID,name,email,password,phone);
            manager.addUser(ID, email, name, password, phone);
            session.setAttribute("user",user);
        %>
        <button class="btn btn-secondary" type="btn" onclick="location.href = 'index.jsp'" > Return to the Home Page </button>
        </div>
        
    </body>
</html>
