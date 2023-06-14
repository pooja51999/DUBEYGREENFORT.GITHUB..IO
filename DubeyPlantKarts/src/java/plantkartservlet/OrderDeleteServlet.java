
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.PlantOrderAction;


public class OrderDeleteServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String id=request.getParameter("orderid");
        int orderId=Integer.parseInt(id);
        PlantOrderAction ac = new PlantOrderAction();
        if(ac.deletePlantOrder(orderId))
        {
            response.sendRedirect("admin.jsp");
        }
    }
}

   