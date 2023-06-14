
package plantkartservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import plantkartaction.PlantAction;


public class PlantDeleteServlet extends HttpServlet 
{   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String pid = request.getParameter("pid");
       int plantId = Integer.parseInt(pid);
       
       PlantAction ac=new PlantAction();
       if(ac.deletePlant(plantId))
       {
           response.sendRedirect("admin.jsp");
       }
    }
}

    