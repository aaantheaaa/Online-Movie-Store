<%-- 
    Document   : movie_added
    Created on : 2019. 5. 22, ?? 11:21:57
    Author     : el181
--%>

<!--Add Movie Confirm Page-->
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="Online Movie Store | Movie Added"/>
</jsp:include>
<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>


<%
            String title = request.getParameter("title");
            int year = Integer.parseInt(request.getParameter("year"));  
            String genre = request.getParameter("genre");
            int rating = Integer.parseInt(request.getParameter("rating")); 
            double price = Double.parseDouble(request.getParameter("price")); 
            int runtime = Integer.parseInt(request.getParameter("runtime"));
            String synopsis = request.getParameter("synopsis");
            String image= request.getParameter("image");
            int quantity= Integer.parseInt(request.getParameter("quantity"));
            int key = (new Random()).nextInt(999999);
            String ID = "" + key;


    %>

<div class="container pt-5">
    <div class="header row">
        <h1>The Movie " <%=title%> " has successfully added </h1>
    </div>

    <div class="container pt-2">
        <p>Film ID is: <%=ID%></p>
        <p>Year released: <%=year%></p>
        <p>Genre: <%=genre%></p>
        <p>Rating: <%=rating%></p>        
        <p>Price: <%=price%></p>  
        <p>Runtime: <%=runtime%></p>
        <p>Quantity: <%=quantity%></p>        
        <p>Synopsis: <%=synopsis%></p>
        <p>Film poster: <%=image%></p>

        <%    
            //Activate the database add-function once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            Movie movie = new Movie(ID,title,year,genre,rating,price,runtime,synopsis,image,quantity);
            manager.addMovie(ID,title,year,genre,rating,price,runtime,synopsis,image,quantity); 
            session.setAttribute("movie",movie);
        %>
        <button class="btn btn-lg btn-primary" type="button" onclick="location.href = 'movie_list.jsp'" > Confirm </button>
    </div>
</div>

<jsp:include page="page_footer.jsp" />