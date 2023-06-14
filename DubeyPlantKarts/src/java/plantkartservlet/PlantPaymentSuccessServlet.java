
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.PlantOrderAction;

public class PlantPaymentSuccessServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String id=request.getParameter("orderid");
       int orderid=Integer.parseInt(id);
       PlantOrderAction ac=new PlantOrderAction();
       boolean b=ac.paymentSuccess(orderid);
       if(b==true)
       {
           response.sendRedirect("admin.jsp");
       }
    }

}