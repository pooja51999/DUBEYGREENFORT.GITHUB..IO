
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.PlantOrderAction;

public class DeleteKartItemServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String id=request.getParameter("orderid");
       int orderId=Integer.parseInt(id);
       PlantOrderAction ac = new PlantOrderAction();
       boolean b=ac.removeFromKart(orderId);
       if(b==true)
       {
           response.sendRedirect("payment.jsp");
       }
    }
}

    