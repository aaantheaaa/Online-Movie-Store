<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Header: navigation bar on the top, should import with page_footer-->
<%
String title = request.getParameter("page_title");
String search = request.getParameter("Search");

String query = "";

if (search!=null && !search.isEmpty())
{
    query = search;
}
%>
<%@page import="oms.controller.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <title><%=title%></title>
        
         
    </head>
    <body>
    	<jsp:include page="/ConnServlet" flush="true" />
		<nav class="navbar navbar-toggleable-xl navbar-dark bg-dark text-light">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/">Movie Store</a>
				</div>
		  		<div class="navbar-nav">
					<a href="/index.jsp" class="nav-item nav-link">Home</a>
					<a href="/movie_list.jsp" class="nav-item nav-link">Movie List</a>
                                        <a href="/cart.jsp" class="nav-item nav-link">Cart</a>
				</div>
                            
                            <form class="form-inline" action="movie_list.jsp" method="GET">     
                                <div class="navbar-nav">
                                    <a href="/login.jsp" class="nav-item nav-link" style = "color: white">Login</a>
                                    <a href="/register.jsp" class="nav-item nav-link"style = "color: white">Register</a>
                                </div>
                                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="Search" value="<%=query%>">
                                    <button class="btn fas fa-search text-light" type="submit"></button>
		  		</form>
                                      
                                        
		</div>
		</nav>
        <main role="main">