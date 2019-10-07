<%@page import="oms.model.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Main Page</title>
    </head>
    <%
        String color;
        String log;
        User user = (User) session.getAttribute("student");

        if (user != null) {
            log = " &lt " + user.getName() + " &gt";
        } else {
            color = "#AED6F1";
            log = " &lt " + "Guest Student" + " &gt";
        }

    %>
    <body>
        <div><span class="time" id="time" ></span></div>
        <h2 class="outline">Student Profile</h2> 
        <table width="100%" >
            <tr bgcolor="lightgrey" ><td align="right" class="outline">You are logged in as  <%=log%></td></tr>
            <tr><td align="right">
                    <%if (user != null) { %>
                    <u><a class="link" href="edit_user.jsp">Account</a></u> 
                        <%} else { %>
                    <u><a class="link" href="register.jsp">Register</a></u>
                        <%}%>
                    &emsp;<u><a class="link" href="logout.jsp">Logout</a></u>
                </td>
            </tr>                  
        </table>        
        <hr>
        <% if (user != null) { %>
        <table class="account">
            <thead class="h">
                <tr>
                    <td class="a">ID</td>
                    <td class="a">Name</td>
                    <td class="a">Email</td>
                    <td class="a">Password</td>
                    <td class="a">Phone</td>
                </tr>
            </thead>
            <tbody >
                <tr>
                    <td class="a">${student.ID}</td>
                    <td class="a" >${student.name}</td>
                    <td class="a">${student.email}</td>
                    <td class="a">${student.password}</td>
                    <td class="a">${student.phone}</td>
                </tr>
            </tbody>
        </table>
        <% session.setAttribute("studentEdit", user); %>
        <%}else{ %>
        <p class="outline">Welcome Guest Student</p>
        <%}%>
    </body>
</html>
