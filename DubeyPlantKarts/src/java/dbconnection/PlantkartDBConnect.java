
package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class PlantkartDBConnect 
{
    public static final String user="root";
    public static final String password="Tejas@12";
    public static final String url="jdbc:mysql://localhost:3307/plantkarts";
    public static Connection con=null;
    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }catch(Exception e)
        {
            
        }
    }
    public static Connection getPlantkartDBConnection()
    {
        try
        {
            con=DriverManager.getConnection(url, user, password);
        }catch(Exception e)
        {
            
        }
        return con;
        
        
    }
    
}
