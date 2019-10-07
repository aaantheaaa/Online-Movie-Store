<%@page contentType="text/html" import="oms.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome Page</title>
    </head>    
    <%
        User user = (User)session.getAttribute("userLogin");
    %>
    <body>
        <div><span class="time" id="time" ></span></div>
        <% if(user != null) { %>        
        <h1>Hello, <%= user.getName() %></h1> 
        <p>Your ID is: <%= user.getID() %></p>
        <p>Your email: <%= user.getEmail() %></p>
        <p>Your phone: <%= user.getPhone() %></p>
        <p>Your password is: <%= user.getPassword() %></p>        
        <%            
            session.setAttribute("user",user);
        %>
        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
        <%}else{%>
        <p class="outline"> Login unsuccessful! </p>
        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
        <%}%>        
        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
    </body>
</html>
