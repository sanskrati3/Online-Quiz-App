package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>LNCT Quiz Portal</title>\n");
      out.write("\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    <!-- Latest compiled and minified CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap.min.css\">\n");
      out.write("    <!-- Optional theme -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"bootstrap/css/custom-theme.css\">\n");
      out.write("\n");
      out.write("    <!-- Latest compiled and minified JavaScript -->\n");
      out.write("    <script src=\"bootstrap/js/jquery-2.2.2.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"container\">\n");
      out.write("    <header>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "nav_public.jsp", out, false);
      out.write("\n");
      out.write("    </header>\n");
      out.write("    <div class=\"page-header\">\n");
      out.write("        <h3>About Us</h3>\n");
      out.write("    </div>\n");
      out.write("    ");
 String info = (String) session.getAttribute("info");
        String info_msg = (String) session.getAttribute("info_msg"); 
      out.write("\n");
      out.write("    ");
 if (info == "true") { 
      out.write("\n");
      out.write("    <div class=\"alert alert-dismissible alert-success\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\n");
      out.write("        <strong>");
      out.print( info_msg);
      out.write("\n");
      out.write("        </strong>\n");
      out.write("    </div>\n");
      out.write("    ");
 } 
      out.write("\n");
      out.write("    <div class=\"col-lg-1\"></div>\n");
      out.write("    <div class=\"col-lg-10\">\n");
      out.write("        <p style=\"font-size: 1.5em;\">Online Quiz Portal is a project made with Java Servlet in this user have to first register his or her account then registered user can select desired topic for quiz.<br /><br />\n");
      out.write("\n");
      out.write("            This project was developed by :<br>\n");
      out.write("            1. Nikhil Gandhi<br>\n");
      out.write("            2. Sanskrati Gawande<br>\n");
      out.write("            3. Shivam Bhawsar \n");
      out.write("        </p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-lg-1\"></div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("<script>\n");
      out.write("    $('.nav-collapse').click('li', function () {\n");
      out.write("        $('.nav-collapse').collapse('hide');\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("</html>");
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
