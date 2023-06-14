
package plantkartaction;

import dbconnection.PlantkartDBConnect;
import plantkartbean.SignUpBean;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class SignupAction {
    static Connection con=PlantkartDBConnect.getPlantkartDBConnection();
    public boolean SignUpRegister(SignUpBean data)
    {
        boolean b=false;
        
        try
        {
            Statement smt= con.createStatement();
            int i=smt.executeUpdate("insert into su  (email,name,mobile,password) values('"+data.getEmail()+"','"+data.getUser()+"','"+data.getMobile()+"','"+data.getPassword()+"')");
            if(i>0)
                b=true;
            else
                b=false;
        }catch(Exception e)
        {
            
        }
        return b;
    }
    
    public ResultSet getCustomers()
    {
        
        ResultSet rs=null;
        try
        {
            Statement smt = con.createStatement();
            rs=smt.executeQuery("select * from su");
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    public boolean deletePerson(String email)
    {
        boolean b=false;
        try
        {
            Statement smt = con.createStatement();
            int i=smt.executeUpdate("delete from su where email='"+email+"'");
            if(i>0)
                b=true;
        }
        catch(Exception e)
        {
            
        }
        return b;
    }
    
}
