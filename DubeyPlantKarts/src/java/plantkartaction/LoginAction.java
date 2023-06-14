
package plantkartaction;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconnection.PlantkartDBConnect;

public class LoginAction 
{
     static Connection con=PlantkartDBConnect.getPlantkartDBConnection();
    public boolean checkUser(String email,String password)
    {
        boolean b=false;
        try
        {
            PreparedStatement ps = con.prepareStatement("select * from su where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
                b=true;
            }
            else
            {
                b=false;
            }
        }catch(Exception e)
        {          
        }
        return b;
     }
    public boolean checkAdmin(String email,String password)
    {
        boolean b = false;
        try
        {
            PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
                b=true;
            }
            else
            {
                b=false;
            }
            
        }
        catch(Exception e)
        {
            
        }
        return b;
    }
   }


