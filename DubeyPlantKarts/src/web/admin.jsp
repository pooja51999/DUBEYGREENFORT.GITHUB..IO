
<%@page import="plantkartaction.SignupAction" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="plantkartaction.PlantAction" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
       
    </head>
    <body>
        <%
            
             String email=null;
            HttpSession sess=request.getSession();
        
            if(sess!=null)
            {
                email=sess.getAttribute("adminSessionid").toString();
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
            
            String emailid=request.getParameter("email");
            
        %>
        <h1>Welcome admin :<%=email%></h1>
        
        <a class="btn btn-success" class="btn-link"  style="text-decoration: none" data-bs-toggle="modal" data-bs-target="#addplant" style="cursor: pointer">Add Plants</a>
        <a class="btn btn-success" class="btn-link"  style="text-decoration: none" data-bs-toggle="modal" data-bs-target="#showplant" style="cursor: pointer">View Plants</a>
        <a class="btn btn-success" class="btn-link"  style="text-decoration: none"  data-bs-toggle="modal" data-bs-target="#currentorder" style="cursor: pointer">Current Order</a>
        <a href="logout.jsp" class="btn btn-danger" style="text-decoration: none">Logout</a>
        <%@include file="customermodal.jsp" %>   
        <%@include file="plantviewmodal.jsp" %>
        <%@include file="plantordermodal.jsp" %>
        
         <table class="table table-dark table-bordered mt-2">
            <tr>
                <th>SNO</th>
                <th>EMAIL</th>
                <th>NAME</th>
                <th>MOBILE</th>
                <th>PASSWORD</th>
                <th>ADDRESS</th>
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
        
        <%
            
            SignupAction ac=new SignupAction();
            ResultSet rs=ac.getCustomers();
            int i=1;
            while(rs.next())
            {
            
        %>
        
        <tr>
            <td><%=i%></td> 
            <td><%=rs.getString(1)%></td> 
            <td><%=rs.getString(2)%></td> 
            <td><%=rs.getString(3)%></td> 
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="DeletePersonServlet?email=<%=rs.getString(1)%>" onclick="return confirm('Are you Sure Want To Delete?')"><img src="img/icons8-delete-100.png" style="height: 35px;width: 35px"/></a></td>
            <td>
                <a href="admin.jsp?email=<%=rs.getString(1)%>" class="btn btn-success btn-sm"> Update 
                </a>
            </td>
        </tr>
            
         <%
             i++;
            }       
                
         %>
        </table>
        
         <%
              //rs.beforeFrist();
              String id=null,name=null,mobile=null,password=null,address=null;
              while(rs.next())
              {
                  if(rs.getString(1).equals(emailid))
                  {
                       id=rs.getString(1);
                       name=rs.getString(2);
                       mobile=rs.getString(3);
                       password=rs.getString(4);
                       address=rs.getString(5);   
                  }
              }
         %>
         
         <%@include file="plantupdatemodal.jsp" %>
        
    </div>
    
         <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script> 
        <%
            if(emailid!=null)
            {
            
        %>
        <script>
            $(document).ready(function()
            {
                $("#update").modal('show');
            }
            
            
            );
            
        </script>
        <%
            }
         %>      
                
    </body>
</html>
