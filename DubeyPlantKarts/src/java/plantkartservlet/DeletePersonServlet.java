
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.SignupAction;

public class DeletePersonServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String email=request.getParameter("email");
        SignupAction ac = new SignupAction();
        boolean b=ac.deletePerson(email);
        if(b==true)
        {
            response.sendRedirect("admin.jsp");
        }
    }

}