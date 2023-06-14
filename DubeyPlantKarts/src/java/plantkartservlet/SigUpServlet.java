
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.SignupAction;
import plantkartbean.SignUpBean;

public class SigUpServlet extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String name = request.getParameter("user");
        String password = request.getParameter("password");
        
        SignUpBean data=new SignUpBean();
        data.setEmail(email);
        data.setMobile(mobile);
        data.setUser(name);
        data.setPassword(password);
        
        SignupAction ac = new SignupAction();
        boolean b=ac.SignUpRegister(data);
        if(b==true)
            response.sendRedirect("login.jsp");
        else
            response.sendRedirect("error.jsp");
       
    }

}
