
package plantkartaction;
import dbconnection.PlantkartDBConnect;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;


public class UserPlantAction 
{
    static Connection con=PlantkartDBConnect.getPlantkartDBConnection();
    public ResultSet getPendingOrder(String email)
    {
        ResultSet rs=null;
        try
        {
            Statement smt=con.createStatement();
            rs=smt.executeQuery("select * from plantorder where status='pending' and email='"+email+"'");
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    public ResultSet getSuccessOrder(String email)
    {
        ResultSet rs1=null;
        try
        {
            Statement smt=con.createStatement();
            rs1=smt.executeQuery("select * from plantorder where status='Success' and email='"+email+"'");
        }
        catch(Exception e)
        {
            
        }
        return rs1;
    }
}
