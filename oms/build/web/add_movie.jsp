<%-- 
    Document   : add_movie
    Created on : 2019. 5. 21, ?? 3:06:33
    Author     : el181
--%>
<!--Add movie page-->
<jsp:include page="page_header.jsp">
    <jsp:param name="page_title" value="Online Movie Store | Add Movie"/>
</jsp:include>

        <script> <!-- client side validation for preventing users to type empty values -->
        function validate() {
          var v_title = document.forms["add_form"]["title"].value;
          if (v_title=="") {
            alert("Title must be filled out");
            return false;
          }
          var v_year = document.forms["add_form"]["year"].value;
          if (v_year=="Choose...") {
            alert("Year must be selected");
            return false;
          }
          var v_genre = document.forms["add_form"]["genre"].value;
          if (v_genre=="Choose...") {
            alert("Genre must be selected");
            return false;
          }
          var v_rating = document.forms["add_form"]["rating"].value;
          if (v_rating=="Choose...") {
            alert("Rating must be selected");
            return false;
          }
          var v_price = document.forms["add_form"]["price"].value;
          if (v_price=="") {
            alert("Price must be filled out");
            return false;
          }
          var v_runtime = document.forms["add_form"]["runtime"].value;
          if (v_runtime=="") {
            alert("Runtime must be filled out");
            return false;
          }
          var v_quantity = document.forms["add_form"]["quantity"].value;
          if (v_quantity=="") {
            alert("Quantity must be filled out");
            return false;
          }
          var v_synopsis = document.forms["add_form"]["synopsis"].value;
          if (v_synopsis=="") {
            alert("Synopsis must be filled out");
            return false;
            }
          }
          </script>


      <div class="container pt-5">
        <div class="header">
            <nav aria-label="breadcrumb"> <!-- navigation bar for users to find movie easier -->
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/movie_list.jsp" style="text-transform:capitalize;">Movies</a></li>
                  <li class="breadcrumb-item">Add Movie</li>
                </ol>
              </nav>
            <h1>Add Movie</h1>
        </div>
      </div>

      <div class="container pt-2">
        <form action="movie_added.jsp" method ="post" style = "margin-top: 50px" name = "add_form" onsubmit="return validate()">          
          
            <div class="form-group">
              <label for="inputTitle">Title</label>
              <input type="text" class="form-control" id="inputTitle" placeholder="Film title" name = "title" onpaste = "return true">
            </div>
         
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label for="inputYear">Year released</label>
                    <select id="inputYear" class="form-control"name = "year">
                        <option selected>Choose...</option>
                        <% for(int i = 1950;i <= 2019;i++){%>
                    <option value ="<%=i%>"><%=i%></option>
                    <%}%>
              </select>
              <%--input type="number" class="form-control" id="inputYear" placeholder="year"name = "year"--%>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputGenre">Genre</label>
                    <select id="inputGenre" class="form-control"name = "genre">
                     <option selected>Choose...</option>
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
                        <option selected>Choose...</option>
                        <% for(int i = 1;i <= 10;i++){%>
                    <option value ="<%=i%>" ><%=i%></option>
                    <%}%>
                     </select>    
                </div>
            </div>    
            <div class="form-row">
                <div class="form-group col-md-4">
                <label for ="inputPrice">Price</label>
                <input type="text" class="form-control" id="inputPrice" placeholder="Price" name = "price">
                </div>
                <div class="form-group col-md-4">
                <label for ="inputRuntime">Runtime</label>
                <input type="text" class="form-control" id="inputRuntime" placeholder="Runtime(m)" name = "runtime">
                </div>
                <div class="form-group col-md-4">
                <label for ="inputQuantity">Quantity</label>
                <input type="text" class="form-control" id="inputQuantity" placeholder="Quantity" name = "quantity">
                </div>
            </div>
                       
           <div class="form-group">
               <lable for ="inputSynopsis">Synopsis</lable>
               <textarea class ="form-control" id="inputSynopsis" rows ="4" name = "synopsis" onpaste = "return true"></textarea>
           </div>  
                     
           <div class="form-group">
               <lable for ="inputImage">Image</lable>
               <input type="text" class="form-control" id="inputImage" placeholder="Upload image path" name="image" value="/img/default.jpg">
           </div>  
          <input style = "margin-top: 30px" type="submit" class="btn btn-primary"value = "Create">

        </form>
      </div>

<jsp:include page="page_footer.jsp" />