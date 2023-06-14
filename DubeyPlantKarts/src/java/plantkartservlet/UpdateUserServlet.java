
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.UpdatePersonAction;
import plantkartbean.SignUpBean;


public class UpdateUserServlet extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String email=request.getParameter("email");
        String user=request.getParameter("user");
        String mobile=request.getParameter("mobile");
        String password=request.getParameter("password");
        String address=request.getParameter("address");
        
        SignUpBean data=new SignUpBean();
        data.setEmail(email);
        data.setUser(user);
        data.setMobile(mobile);
        data.setPassword(password);
        data.setAddress(address);
        
        UpdatePersonAction ac=new UpdatePersonAction();
        boolean b = ac.UpdateUser(data);
        if(b==true)
        {
            response.sendRedirect("admin.jsp");
        }
    }
}
