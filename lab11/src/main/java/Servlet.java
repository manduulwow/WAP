import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/validate")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String missingFieldsMsg = "";
        String customerName = request.getParameter("fname");
        String gender1 = request.getParameter("optradio1");
        String gender2 = request.getParameter("optradio2");
        String category = request.getParameter("category");
        String message = request.getParameter("message");
        System.out.println("name= "+ customerName + ", gender= " + gender1 + ", cat= " + category + ", msg= " + message);
        // Check for missing fields data
        if(customerName.equals("")) {
            missingFieldsMsg += "<span style='color:red;font-size:1em'>Name is missing.</span><br/>";
        }
        if(gender1 == null && gender2 == null) {
            missingFieldsMsg += "<span style='color:red;'>Gender is missing.</span><br/>";
        }
        if(category.equals("Select...")) {
            missingFieldsMsg += "<span style='color:red;'>Category is missing.</span><br/>";
        }
        if(message.equals("")) {
            missingFieldsMsg += "<span style='color:red;'>Message is missing.</span><br/>";
        }
        if(!missingFieldsMsg.equals("")) {
            request.setAttribute("errMsgs", missingFieldsMsg);
            // forward back to sender
            request.setAttribute("data",missingFieldsMsg);
            request.getRequestDispatcher("form.jsp").forward(request, response);
        } else {
            String redirectUrl = "thankyou.jsp?name="+customerName+"&radioGender="+((gender2 == null) ? "male" : "female")+"&category="+category+"&message="+message;
            response.sendRedirect(redirectUrl);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html");
//        PrintWriter out  = response.getWriter();
//        out.println("Hello");
          response.sendRedirect(request.getContextPath() + "/thankyou.jsp");
    }
}


