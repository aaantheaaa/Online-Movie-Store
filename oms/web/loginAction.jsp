<%-- 
    Document   : loginAction
    Created on : Aug 11, 2018, 9:34:47 PM
    Author     : George
--%>

<%@page import="oms.model.dao.*"%>
<%@page import="oms.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="oms.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action Page</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            
            String email = request.getParameter("email");
            String password = request.getParameter("password");            
            User user = manager.findUser(email, password);

            if (user != null) {
                session.setAttribute("userLogin", user);
                response.sendRedirect("loginWelcome.jsp");                        
            } else {
                session.setAttribute("existErr", "User does not exist!");
                response.sendRedirect("login.jsp");                               
            }             
        %>
        
    </body>
</html>
