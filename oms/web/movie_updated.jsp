<%-- 
    Document   : movie_updated
    Created on : 2019. 5. 26, ?? 2:58:07
    Author     : el181
--%>
<!--Updated Movie Confrim Page-->
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="Online Movie Store | Movie Updated"/>
</jsp:include>
<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>
<%
            Movie movie = (Movie)session.getAttribute("current_movie");
            
            if(request.getParameter("title").length() > 0) {movie.setTitle(request.getParameter("title"));} //to see if there is changed value as calling request.getParameter causes error
                                                                                                            //when therer is no value, also, "request.getParameter("value name") == null" is not working 
                                                                                                            //so i chose the way to compare the length of it to check if there is valid input value.
                                                                                                            //In this way, system only update changed value.
            if(request.getParameter("year").length() > 0) {movie.setYear(Integer.parseInt(request.getParameter("year")));}
            if(request.getParameter("genre").length() > 0) {movie.setGenre(request.getParameter("genre"));}
            if(request.getParameter("rating").length() > 0) {movie.setRating(Integer.parseInt(request.getParameter("rating")));}
            if(request.getParameter("price").length() > 0) {movie.setPrice(Double.parseDouble(request.getParameter("price")));}
            if(request.getParameter("runtime").length() > 0) {movie.setRuntime(Integer.parseInt(request.getParameter("runtime")));}
            if(request.getParameter("quantity").length() > 0) {movie.setQuantity(Integer.parseInt(request.getParameter("quantity")));}
            if(request.getParameter("synopsis").length() > 0) {movie.setSynopsis(request.getParameter("synopsis"));}
            if(request.getParameter("image").length() > 0) {movie.setImage(request.getParameter("image"));}
    %>

<div class="container pt-5">
    <div class="header row">
        <h1>The Movie " <%=movie.getTitle()%> " has successfully updated </h1>
    </div>

    <div class="container pt-2">
        <p>Film ID is: <%=movie.getID()%></p>
        <p>Year released: <%=movie.getYear()%></p>
        <p>Genre: <%=movie.getGenre()%></p>
        <p>Rating: <%=movie.getRating()%></p>       
        <p>Price: <%=movie.getPrice()%></p>  
        <p>Runtime: <%=movie.getRuntime()%></p>
        <p>Quantity: <%=movie.getQuantity()%></p>        
        <p>Synopsis: <%=movie.getSynopsis()%></p>
        <p>Film poster: <%=movie.getImage()%></p>


<%   
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.updateMovie(movie); 
            session.setAttribute("movie",movie);
        %>

        
        <button class="btn btn-lg btn-primary" type="button" onclick="location.href = 'movie_list.jsp'" > Back to the List</button>
    </div>
</div>
        

<jsp:include page="page_footer.jsp" />
