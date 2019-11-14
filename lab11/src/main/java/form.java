import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/form")
public class form extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out  = response.getWriter();

        out.println(
                "<html>"+
                "<head>"+
                    "<meta charset=\"UTF-8\">"+
                    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"+
                    "<meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">"+
                    "<title>Document</title>"+
                    "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">"+
                "</head>"+
                "<body>"+
                "<div class=\"container\">"+
                    "<h3>Customer Contact Form</h3>"+
                    "<div class=\"container\">"+
                        "<form action=\"api\" method=\"POST\">"+
                            "<fieldset>"+
                                "<div class=\"form-group\">"+
                                    "<label for=\"firstName\">*Name:</label>"+
                                    "<input type=\"text\" name=\"fname\" class=\"form-control\" id=\"firstName\" placeholder=\"e.g. John\">"+
                                    "<small id=\"studentIdHelp\" class=\"form-text text-muted\">Your unique student Identification number.</small>"+
                                "</div>"+

                                "<label for=\"firstName\">*Gender:</label>"+
                                "<div class=\"form-group\">"+
                                    "<div class=\"form-check\">"+
                                      "<input class=\"form-check-input\" type=\"radio\" name=\"male\" id=\"exampleRadios1\" value=\"option1\">"+
                                      "<label class=\"form-check-label\" for=\"exampleRadios1\">"+
                                                    "Male"+
                                                    "</label>"+
                                    "</div>"+
                                    "<div class=\"form-check\">"+
                                      "<input class=\"form-check-input\" type=\"radio\" name=\"female\" id=\"exampleRadios2\" value=\"option2\">"+
                                      "<label class=\"form-check-label\" for=\"exampleRadios2\">"+
                                                    "Female"+
                                                    "</label>"+
                                    "</div>"+
                                    "<div class=\"form-group\">"+
                                        "<label>*Category:</label>"+
                                        "<select class=\"form-control\" name=\"category\">"+
                                            "<option value=\"first\">Select...</option>"+
                                            "<option>Feedback</option>"+
                                            "<option>Inquiry</option>"+
                                            "<option>Complaint</option>"+
                                        "</select>"+
                                    "</div>"+
                                    "<div class=\"form-group\">"+
                                        "<label for=\"comment\">*Message:</label>"+
                                        "<textarea class=\"form-control\" rows=\"5\" id=\"comment\" name=\"message\"></textarea>"+
                                    "</div>"+
                                "</div>"+
                                "<button id=\"btnSubmit\" type=\"submit\" class=\"btn btn-primary\">Submit</button>"+
                            "</fieldset>"+
                        "</form>"+
                    "</div>"+
                "</div>"+
                "</body>"+
                "</html>"
        );
    }
}

