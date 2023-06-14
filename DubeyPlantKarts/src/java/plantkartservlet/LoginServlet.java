
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.LoginAction;

public class LoginServlet extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String person = request.getParameter("person");
        String email = request.getParameter("user");
        String password = request.getParameter("password");
        LoginAction ac=new LoginAction();
        boolean b=ac.checkUser(email, password);
        
        if(person.equals("user"))
        {
            if(b==true)
            {
                HttpSession session=request.getSession();
                session.setAttribute("userSessionid", email);
                
                response.sendRedirect("user.jsp");
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
        }
        else if(person.equals("admin"))
        {
            boolean b1=ac.checkAdmin(email, password);
            if(b1==true)
            {
                 HttpSession session=request.getSession();
                session.setAttribute("adminSessionid", email);
                
                response.sendRedirect("admin.jsp");
            }
            else
            {
                response.sendRedirect("error.jsp");
            }
        }
    }
   

}  
