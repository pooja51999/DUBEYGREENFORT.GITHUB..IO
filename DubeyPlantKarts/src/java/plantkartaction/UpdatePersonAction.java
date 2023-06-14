
package plantkartaction;

import dbconnection.PlantkartDBConnect;
import plantkartbean.SignUpBean;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;


public class UpdatePersonAction 
{
    public boolean UpdateUser(SignUpBean data)
    {
        boolean b=false;
        try
        {
           Connection con=PlantkartDBConnect.getPlantkartDBConnection();
           PreparedStatement ps=con.prepareStatement("update su set name=?,mobile=?,password=?,address=? where email=?");
           ps.setString(1,data.getUser());
           ps.setString(2,data.getMobile());
           ps.setString(3,data.getPassword());
           ps.setString(4,data.getAddress());
           ps.setString(5, data.getEmail());
           int i=ps.executeUpdate();
           if(i>0)
           {
               b=true;
           }
        }
        catch(Exception e)
        {
            
        }
        return b;
    }
}
