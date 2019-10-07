<%-- 
    Document   : update_movie
    Created on : 2019. 5. 26, ?? 1:42:49
    Author     : el181
--%>

<!--Update Movie Page-->
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="Online Movie Store | Add Movie"/>
</jsp:include>

<%@page import="oms.model.dao.*"%>
<%@page import="oms.model.Movie"%>
<%@page import="java.util.*"%>
       <script> <!-- client side validation for preventing users to type empty values -->
        function validate() {
          var v_title = document.forms["update_form"]["title"].value;
          if (v_title=="") {
            alert("Title must be filled out");
            return false;
          }
          var v_year = document.forms["update_form"]["year"].value;
          if (v_year=="Choose...") {
            alert("Year must be selected");
            return false;
          }
          var v_genre = document.forms["update_form"]["genre"].value;
          if (v_genre=="Choose...") {
            alert("Genre must be selected");
            return false;
          }
          var v_rating = document.forms["update_form"]["rating"].value;
          if (v_rating=="Choose...") {
            alert("Rating must be selected");
            return false;
          }
          var v_price = document.forms["update_form"]["price"].value;
          if (v_price=="") {
            alert("Price must be filled out");
            return false;
          }
          var v_runtime = document.forms["update_form"]["runtime"].value;
          if (v_runtime=="") {
            alert("Runtime must be filled out");
            return false;
          }
          var v_quantity = document.forms["update_form"]["quantity"].value;
          if (v_quantity=="") {
            alert("Quantity must be filled out");
            return false;
          }
          var v_synopsis = document.forms["update_form"]["synopsis"].value;
          if (v_synopsis=="") {
            alert("Synopsis must be filled out");
            return false;
            }
          }
          </script>
<%
    Movie movie = (Movie)session.getAttribute("current_movie");
    String image = movie.getImage();
    if (movie.getImage() == null) { image = "/img/default.jpg"; }
%>

      <div class="container pt-5">
        <div class="header row">
            <h1>Update Movie</h1>
        </div>
      </div>

      <div class="container pt-2">    
          <form action ="movie_updated.jsp" method ="post" name = "update_form" onsubmit="return validate()">
          <h3 style ="margin-top: 20px">Film ID: <%=movie.getID()%></h3>
            <div class="form-group">
              <label for="inputTitle">Title</label>
              <input type="text" class="form-control" id="inputTitle" value ="<%=movie.getTitle()%>" name = "title"> <!--value = set default value of the input as previous value-->
            </div>
         
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label for="inputYear">Year released</label>
                    <select id="inputYear" class="form-control"name = "year">
                        <option selected><%=movie.getYear()%></option>
                        <% for(int i = 1950;i <= 2019;i++){%>
                    <option value ="<%=i%>"><%=i%></option>
                    <%}%>
              </select>
              <%--input type="number" class="form-control" id="inputYear" placeholder="year"name = "year"--%>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputGenre">Genre</label>
                    <select id="inputGenre" class="form-control"name = "genre">
                     <option selected><%=movie.getGenre()%></option>
                     <option value = "Horror">Horror</option>
                     <option value = "Action">Action</option>
                     <option value = "Romance">Romance</option>
                     <option value = "Comedy">Comedy</option>
                     <option value = "Sci-fi">Sci-fi</option>
                     <option value = "Romance">Romance</option>
                     <option value = "Thriller">Thriller</option>
                     <option value = "Crime">Crime</option>
                     <option value = "Drama">Drama</option>
                     <option value = "Fantasy">Fantasy</option>                
                    </select>
            
                </div>
                  <div class="form-group col-md-4">
                    <label for="inputRating">Rating</label>
                     <select id="inputState" class="form-control"name = "rating">
                        <option selected><%=movie.getRating()%></option>
                        <% for(int i = 1;i <= 10;i++){%>
                    <option value ="<%=i%>" ><%=i%></option>
                    <%}%>
                     </select>    
                </div>
            </div>    
            <div class="form-row">
                <div class="form-group col-md-4">
                <label for ="inputPrice">Price</label>
                <input type="text" class="form-control" id="inputPrice" value ="<%=movie.getPrice()%>" placeholder="Price" name = "price">
                </div>
                <div class="form-group col-md-4">
                <label for ="inputRuntime">Runtime</label>
                <input type="text" class="form-control" id="inputRuntime" value ="<%=movie.getRuntime()%>" placeholder="Runtime(m)" name = "runtime">
                </div>
                <div class="form-group col-md-4">
                <label for ="inputQuantity">Quantity</label>
                <input type="text" class="form-control" id="inputQuantity" value ="<%=movie.getQuantity()%>" placeholder="Quantity" name = "quantity">
                </div>
            </div>
                       
           <div class="form-group">
               <label for ="inputSynopsis">Synopsis</label>
               <textarea class ="form-control" id="inputSynopsis" rows ="4" name = "synopsis" onpaste = "return true"><%=movie.getSynopsis()%></textarea>
           </div>  
                     
           <div class="form-group">
               <label for ="inputImage">Image</label>
               <input type="text" class="form-control" id="inputImage" value ="<%=image%>" placeholder="Upload image path" name = "image">
           </div>       
          <button style = "margin-top: 30px" onclick="validate()" type="submit" class="btn btn-primary">Confirm</button>

            </form>
      </div>


<jsp:include page="page_footer.jsp" />