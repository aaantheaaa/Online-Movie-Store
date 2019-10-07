<%-- 
    Document   : movie_list
    Created on : 2019. 5. 19, ?? 11:16:12
    Author     : el181
--%>
<!--Movie List Page-->
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="Online Movie Store | Movie List"/>
</jsp:include>

<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>
<style>
    tr:hover {background-color: #f5f5f5;}
</style>
<%
DBManager manager = (DBManager)session.getAttribute("manager");

String genre = request.getParameter("Genre");
String search = request.getParameter("Search");

ArrayList<Movie> movies = manager.getAllMovies(); // get the data of all the movies in database

String title = "Movie List";
String error_msg = "";

if (search!=null && !search.isEmpty())
{
    String query = search;    
    movies = manager.search(query);
    if(movies.size() <= 0)//check if there is matched data
        error_msg = "No result for &#8220"+query+"&#8221"; // error message in case there is no matching data from search word
}

if (genre!=null && !genre.isEmpty())
{
    title = genre;
    movies = manager.getGenre(genre); //get list of movies with selected genre
}

String ID = "111";//****get ID of current user here*****
//String ID = (String)session.getAttribute("current_user");
boolean staff = true;
///staff = manager.isStaff(ID); // check if the user is staff (authorised user for create/update/delete)

%>


    <div class="container pt-5">
        <div class="header">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <% if (genre!=null && !genre.isEmpty()) { %><li class="breadcrumb-item"><a href="/movie_list.jsp" style="text-transform:capitalize;">Movies</a></li> <li class="breadcrumb-item"><%=genre%></li> <% } else { %>
                  <li class="breadcrumb-item">Movies</li>
                  <% } %>
                </ol>
              </nav>
            <h1 style="text-transform:capitalize;"><%=title%></h1>
            <%if(staff){%> <!-- check if user is Staff and only show button for staff -->
            <a href = "add_movie.jsp" class = "btn btn-lg btn-primary button1"> Add Movie </a> <!--go to add movie page -->
            <%}%>
        </div>
        <div class="container">
            <form method ="post">
                <table class="table" id="movieList">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col"> ID </th>
                        <th scope="col"> Title </th>
                        <th scope="col"> Year </th>
                        <th scope="col"> Genre </th>
                        <th scope="col"> Rating </th>
                        <th scope="col"> Price </th>
                        <th scope="col"> Quantity </th>
                    </tr>
                    </thead>
                    
                    <tbody>
                        
                        <%
                        for (Movie currentMovie : movies) //for loop for movies (list of movie data: default is whole movie list)
                                                          //to show all data in movies in the form of table
                            {
                        %>
                            <tr>
                                <th scope = "row" ><%=currentMovie.getID()%></th>
                                <td style="text-transform:capitalize;"><a href="/movie_details.jsp?movieID=<%=currentMovie.getID()%>"><%=currentMovie.getTitle()%></a></td> <!--Clickable text_move to movie detail page for selected movie -->
                                <td ><%=currentMovie.getYear()%></td>
                                <td style="text-transform:capitalize;"><a href="/movie_list.jsp?Genre=<%=currentMovie.getGenre()%>"><%=currentMovie.getGenre()%></a></td><!-- Clickable text_ once click a genre, only showing movies with selected genre  -->
                                <td ><%=currentMovie.getRating()%></td>
                                <td ><%=currentMovie.getPrice()%></td>
                                <td ><%=currentMovie.getQuantity()%></td>
                            </tr>
                        <%
                            }
                        %>
                    </tbody>
                    
                </table>
                    <h4 style = "margin-top: 30px"><%=error_msg%></h4> 
                    
            </form>
        </div>
    </div>

<jsp:include page="page_footer.jsp" />