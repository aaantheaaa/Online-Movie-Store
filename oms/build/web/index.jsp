<%-- 
    Document   : index
    Created on : 2019. 5. 19, 오전 11:35:32
    Author     : el181
--%>

<!--Main Page-->

<jsp:include page="page_header.jsp">
	<jsp:param name="page_title" value="Online Movie Store | Home"/>
</jsp:include>

<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>
<%@page import="java.util.concurrent.ThreadLocalRandom"%>
<%
    DBManager manager = (DBManager)session.getAttribute("manager");
    int numFeatured = 3;
    //number of featured movie shown in the main page. 
    ArrayList movieIDs = manager.getMovieIds();
    //get all the movie's IDs .
%>

        <div class="header container pt-4">
            <h1>Online Movie Store</h1>
        </div>


	<section class="text-center">
		<div class="bd-example container pt-2">
                    <!-- chaning banner(?) -->
		  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
		    <ol class="carousel-indicators">
                      <!-- 3 screen for whole movie list/ action list/ horror list -->  
		      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
		      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		    </ol>
		    <div class="carousel-inner">
		      <div class="carousel-item active">
		      	<a href="/movie_list.jsp">
                                    <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100 scrollimg" src="/img/list.jpg" />
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Movie List</h5>
                                    <a href="movie_list.jsp"><p>Click here to find a full list of all movies.</p></a>
                                </div>
			    </a>
		      </div>
		      <div class="carousel-item">
		      	<a href="/movie_list.jsp?Genre=Action">
                                    <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100 scrollimg" src="/img/action.jpg" />
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Action Movies</h5>
                                    <a href="/movie_list.jsp?Genre=Action"><p>Click here to browse our Action Movies.</p></a>
                                </div>
			    </a>
		      </div>
                      <div class="carousel-item">
		      	<a href="/movie_list.jsp?Genre=Horror">
                                    <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100 scrollimg" src="/img/horror.jpg" />
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Horor Movies</h5>
                                    <a href="/movie_list.jsp?Genre=Horror"><p>Click here to browse our Horror Movies.</p></a>
                                </div>
			    </a>
		      </div>
		    </div>
                      
		    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
		      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
		      <span class="carousel-control-next-icon" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
		</div>
	</section>
		        


   <div class="album py-5 bg-light">
    <div class="container">
        <h2 class="mb-4">Featured Films</h2>
      <div class="row">
          <% for (int i = 0; i < numFeatured; i++) {                                               //number of featured movie showing in main page
                int movieIndex = (new Random()).nextInt(movieIDs.size());                          // randomly get any movie in the list
                Movie currentMovie = manager.findMovie(String.valueOf(movieIDs.get(movieIndex)));  //save in currentMovie
                movieIDs.remove(movieIndex);                                                       //prevent reapeating to show same movie 
            %>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
              <a href="/movie_details.jsp?movieID=<%=currentMovie.getID()%>">
                <img class="bd-placeholder-img card-img-top movieCard" width="100%" height="464" src="<%=currentMovie.getImage()%>" /> <!--movie poster-->
              </a>
            <div class="card-body">
                <a href="/movie_details.jsp?movieID=<%=currentMovie.getID()%>" style="text-decoration:none; color:black;"><h3><%=currentMovie.getTitle()%></h3></a>
              <p class="card-text">Overview:<br><%=currentMovie.getSynopsis(300)%></p><!--synopsis -->
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/movie_details.jsp?movieID=<%=currentMovie.getID()%>'">View</button> <!--go to movie detail page-->
                </div>
                <small class="text-muted">Runtime <%=currentMovie.getRuntime()%>m</small> <!--runtime-->
              </div>
            </div>
          </div>
        </div>
       <% } %>
      </div>
    </div>
  </div>

<jsp:include page="page_footer.jsp" />