package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import oms.model.dao.*;
import oms.model.Movie;
import java.util.*;

public final class movie_005fupdated_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "page_header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("page_title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Online Movie Store | Movie Added", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

            Movie movie = (Movie)session.getAttribute("current_movie");
            String ID = movie.getID();
            String title = request.getParameter("title");
            int year = Integer.parseInt(request.getParameter("year"));  
            String genre = request.getParameter("genre");
            int rating = Integer.parseInt(request.getParameter("rating")); 
            double price = Double.parseDouble(request.getParameter("price")); 
            int runtime = Integer.parseInt(request.getParameter("runtime"));
            int quantity= Integer.parseInt(request.getParameter("quantity"));
            String synopsis = request.getParameter("synopsis");
            String image= request.getParameter("image");
 

    
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"header row\">\n");
      out.write("        <h1>The Movie \" ");
      out.print(title);
      out.write(" \" has successfully updated </h1>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <p>Film ID is: ");
      out.print(ID);
      out.write("</p>\n");
      out.write("        <p>Year released: ");
      out.print(year);
      out.write("</p>\n");
      out.write("        <p>Genre: ");
      out.print(genre);
      out.write("</p>\n");
      out.write("        <p>Rating: ");
      out.print(rating);
      out.write("</p>       \n");
      out.write("        <p>Price: ");
      out.print(price);
      out.write("</p>  \n");
      out.write("        <p>Runtime: ");
      out.print(runtime);
      out.write("</p>\n");
      out.write("        <p>Quantity: ");
      out.print(quantity);
      out.write("</p>        \n");
      out.write("        <p>Synopsis: ");
      out.print(synopsis);
      out.write("</p>\n");
      out.write("        <p>Film poster: ");
      out.print(image);
      out.write("</p>\n");
      out.write("\n");
      out.write("\n");
    
            //Activate the database add-function once DBManager functions are completed
            DBManager manager = (DBManager)session.getAttribute("manager");
            Movie updated = new Movie(ID,title,year,genre,rating,price,runtime,synopsis,image,quantity);
            manager.addMovie(ID,title,year,genre,rating,price,runtime,synopsis,image,quantity); 
            session.setAttribute("movie",updated);
        
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <button class=\"btn btn-lg btn-primary\" type=\"button\" onclick=\"location.href = 'movie_list.jsp'\" > Back to the List</button>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "page_footer.jsp", out, false);
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
