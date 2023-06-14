
<%@page import="plantkartaction.PlantOrderAction " %>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="usernav.jsp" %>
            <%
                ResultSet rs=null;
                try
                {
                    PlantOrderAction ac = new PlantOrderAction();
                    rs=ac.plantForPayment(email1);
                }
                catch(Exception e)
                {
                
                }      
            %>
            
            <div class="row mt-2">
                <div class="col-lg-1">
                    
                </div>
                <div class="col-lg-5">
                    <a href="index.jsp" class="btn btn-success btn-sm">Add<img src="img/add.png" style="width: 20px; height: 20px"></a>
                    <table class="table mt-2">
                        <caption style="color: red">After Payment Please Send ScreenShot or receipt at whatsApp : 8605709757 or email at: dubeyGreenFort@gmail.com</caption>
                        <tr> 
                            <th>Order Id</th>
                            <th>Plant Id</th>
                            <th>Plant Name</th>
                            <th>Price</th>
                            <th>dis %</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Delete Item</th>
                        </tr>
                    <%
                         int grandTotal=0;
                         while(rs.next())
                         {
                             if(rs.getString(10).equals("pending"))
                             {
                                grandTotal=grandTotal+rs.getInt(9);
                     %>
                          <tr>
                              <td><%=rs.getInt(1)%></td>
                              <td><%=rs.getInt(3)%></td>
                              <td><%=rs.getString(4)%></td>
                              <td><%=rs.getInt(6)%></td>
                              <td><%=rs.getInt(7)%></td>
                              <td><%=rs.getInt(8)%></td>
                              <td><%=rs.getInt(9)%></td>
                              <td><a href="DeleteKartItemServlet?orderid=<%=rs.getInt(1)%>"><img src="img/minus.png" onclick="return confirm('Are you Sure Want To Delete your Order?')" style="width: 20px; height: 20px"></a></td>
                          </tr>
                     <%
                             }
                         } 
                    %>
                    <tr>
                        <td colspan="6"><b>Grand Total</b></td>
                        <td><b><%= grandTotal%></b></td>
                    </tr>
                    </table>
                </div>
                 <div class="col-lg-5">
                     <img src="img/QrCode.jpeg" style="width: 70%; height: 100%;" class="mt-2">
                </div>
                 <div class="col-lg-1">
                    
                </div>   
            </div>
        </div>
        
        
        
         <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
