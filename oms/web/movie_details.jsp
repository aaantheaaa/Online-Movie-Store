<%-- 
    Document   : movie_details
    Created on : 2019. 5. 19, ?? 11:16:12
    Author     : el181
--%>
<!--Movie Details Page-->
<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>
<style>
th{
    padding-right: 20px;
    height: 25px;
    font-size: 20px;
}
dl{
    font-size: 20px;
}
</style>

<%
DBManager manager = (DBManager)session.getAttribute("manager");

Movie currentMovie = manager.findMovie(request.getParameter("movieID"));

String page_title = "Online Movie Store |  " + currentMovie.getTitle();
String movie_genre = currentMovie.getGenre();
session.setAttribute("current_movie",currentMovie); // set attribute of current movie data to deliver the movie data to next page (cart/ update/ delete)

String image = currentMovie.getImage();
if (currentMovie.getImage() == null) { image = "/img/default.jpg"; } //set a default image if there is no matching image saved_ to prevent webpage crashing

String ID = "111";//get ID of current user here
//String ID = (String)session.getAttribute("current_user");
boolean staff = false;
staff = manager.isStaff(ID);// check if the user is staff (authorised user for create/update/delete)

%>
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="<%=page_title%>"/>
</jsp:include>

    <div class="container pt-5">
        <div class="header">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/movie_list.jsp" style="text-transform:capitalize;">Movies</a></li>
                <li class="breadcrumb-item"><a href="/movie_list.jsp?Genre=<%=movie_genre%>" style="text-transform:capitalize;"><%=currentMovie.getGenre()%></a></li>
                <li class="breadcrumb-item active" aria-current="page" style="text-transform:capitalize;"><%=currentMovie.getTitle()%></li>
              </ol>
            </nav>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <img src="<%=image%>" class="bd-placeholder-img rounded mx-auto d-block" style="width:100%;height:auto;"/>
                </div>
                <div class="col-md-8" style = "padding-left: 40px">
                    <h1 style="text-transform:capitalize;">
                        <%=currentMovie.getTitle()%>
                    </h1>
                    <h3> <%=currentMovie.getYear()%>
                    </h3>
                    <table>
                        <tr>                     
                            <th> Film ID </th> <th> <%=currentMovie.getID()%> </th>  
                        </tr>
                        <tr>                     
                            <th> Runtime </th> <th> <%=currentMovie.getRuntime()%> m </th>  
                        </tr>
                    <tr>
                        <th>Rating </th><th> <%=currentMovie.getRating()%> /10 </th>
                    </tr>
                    <tr>
                        <th>Price </th><th> $<%=currentMovie.getPrice()%>  </th>
                    </tr>
                    <tr>
                        <th>Quantity</th><th> <%=currentMovie.getQuantity()%> </th>
                    </tr>
                    </table>
                    <br/>
                    <dl>
                        <dt>
                            Synopsis 
                        </dt>
                        <dd style = "overflow-wrap: break-word">
                            <%=currentMovie.getSynopsis()%>
                        </dd>
                    </dl>
                       <%if(staff){%> <!-- check if user is staff and only show update/delete buttons for staff-->
                        <a href = "delete_movie.jsp" class = "btn btn-lg btn-primary button1"> Delete </a>
                        <a href = "update_movie.jsp" class = "btn btn-lg btn-primary button1"> Update </a>
                        <%}else{%>
                      
                        <a href = "cart.jsp" class = "btn btn-lg btn-primary button1">Add to Cart </a>
                        <%}%>
                        
                </div>
            </div>
        </div>
    </div>

<jsp:include page="page_footer.jsp" />