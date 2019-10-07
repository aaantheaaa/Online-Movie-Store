package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_005fmovie_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "page_header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("page_title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Online Movie Store | Add Movie", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"header row\">\n");
      out.write("            <h1>Add Movie</h1>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <form action=\"movie_added.jsp\" method =\"post\" style = \"margin-top: 50px\">          \n");
      out.write("          \n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <label for=\"inputTitle\">Title</label>\n");
      out.write("              <input type=\"text\" class=\"form-control\" id=\"inputTitle\" placeholder=\"Film title\" name = \"title\">\n");
      out.write("            </div>\n");
      out.write("         \n");
      out.write("            <div class=\"form-row\">\n");
      out.write("                <div class=\"form-group col-md-2\">\n");
      out.write("                    <label for=\"inputYear\">Year released</label>\n");
      out.write("                    <select id=\"inputYear\" class=\"form-control\"name = \"year\">\n");
      out.write("                        <option value =\"\">Choose...</option>\n");
      out.write("                        ");
 for(int i = 1950;i <= 2019;i++){
      out.write("\n");
      out.write("                    <option value =\"");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</option>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("              </select>\n");
      out.write("              ");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group col-md-6\">\n");
      out.write("                    <label for=\"inputGenre\">Genre</label>\n");
      out.write("                    <select id=\"inputGenre\" class=\"form-control\"name = \"genre\">\n");
      out.write("                     <option selected>Choose...</option>\n");
      out.write("                     <option value = \"Horror\">Horror</option>\n");
      out.write("                     <option value = \"Action\">Action</option>\n");
      out.write("                     <option value = \"Romance\">Romance</option>\n");
      out.write("                     <option value = \"Comedy\">Comedy</option>\n");
      out.write("                     <option value = \"Sci-fi\">Sci-fi</option>\n");
      out.write("                     <option value = \"Romance\">Romance</option>\n");
      out.write("                     <option value = \"Thriller\">Thriller</option>\n");
      out.write("                     <option value = \"Crime\">Crime</option>\n");
      out.write("                     <option value = \"Drama\">Drama</option>\n");
      out.write("                     <option value = \"Fantasy\">Fantasy</option>                \n");
      out.write("                    </select>\n");
      out.write("            \n");
      out.write("                </div>\n");
      out.write("                  <div class=\"form-group col-md-4\">\n");
      out.write("                    <label for=\"inputRating\">Rating</label>\n");
      out.write("                     <select id=\"inputState\" class=\"form-control\"name = \"rating\">\n");
      out.write("                        <option value =\"\">Choose...</option>\n");
      out.write("                        ");
 for(int i = 1;i <= 10;i++){
      out.write("\n");
      out.write("                    <option value =\"");
      out.print(i);
      out.write("\" >");
      out.print(i);
      out.write("</option>\n");
      out.write("                     </select>    \n");
      out.write("                </div>\n");
      out.write("            </div>    \n");
      out.write("            <div class=\"form-row\">\n");
      out.write("                <div class=\"form-group col-md-4\">\n");
      out.write("                <label for =\"inputPrice\">Price</label>\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"inputPrice\" placeholder=\"Price\" name = \"price\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group col-md-4\">\n");
      out.write("                <label for =\"inputRuntime\">Runtime</label>\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"inputRuntime\" placeholder=\"Runtime(m)\" name = \"runtime\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group col-md-4\">\n");
      out.write("                <label for =\"inputQuantity\">Quantity</label>\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"inputQuantity\" placeholder=\"Quantity\" name = \"quantity\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                       \n");
      out.write("           <div class=\"form-group\">\n");
      out.write("               <lable for =\"inputSynopsis\">Synopsis</lable>\n");
      out.write("               <textarea class =\"form-control\" id=\"inputSynopsis\" rows =\"4\"name = \"synopsis\"></textarea>\n");
      out.write("           </div>  \n");
      out.write("                     \n");
      out.write("           <div class=\"form-group\">\n");
      out.write("               <lable for =\"inputImage\">Image</lable>\n");
      out.write("               <input type=\"text\" class=\"form-control\" id=\"inputImage\" placeholder=\"Upload image path\" name = \"image\">\n");
      out.write("           </div>  \n");
      out.write("                     \n");
      out.write("          <button style = \"margin-top: 30px\" type=\"submit\" class=\"btn btn-primary\">Create</button>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "page_footer.jsp", out, false);
    }
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
