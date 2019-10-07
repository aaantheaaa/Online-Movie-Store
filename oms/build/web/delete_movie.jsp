<%-- 
    Document   : delete_movie
    Created on : 2019. 5. 26, ?? 1:43:02
    Author     : el181
--%>
<!--Delete Movie Page-->
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="Online Movie Store | Movie Added"/>
</jsp:include>
<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>

<div class="container">
    <div class="header row">
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            Movie movie = (Movie)session.getAttribute("current_movie");      //get the movie data from previous page. 
            manager.deleteMovie(movie.getID());                              //data has been deleted from database.
            %>
            <h2 style ="overflow-wrap:break-word"> <%=movie.getTitle()%> (<%=movie.getID()%>) has been deleted from database </h2>
 
    </div>
        <br/><br/>
        <a href = "movie_list.jsp" class = "btn btn-lg btn-primary button1"> Back to the List </a>
        
        
</div>
<jsp:include page="page_footer.jsp" />