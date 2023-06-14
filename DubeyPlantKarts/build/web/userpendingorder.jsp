<%@page import="plantkartaction.UserPlantAction" %>
<%@page import="java.sql.ResultSet" %>
<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="pendinguserorder" >
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>Check your Pending Order:</h5>
                        <button type="button" class="close" data-bs-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <%
                            UserPlantAction uac=new UserPlantAction();
                            ResultSet rs=uac.getPendingOrder(email);     
                         %>
                         <table class="table table-primary table-bordered">
                             <tr>
                            <thead>
                            <th>OrderId</th>        
                            <th>PlantID</th>
                            <th>PlantName</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Status</th>
                              </tr>
                            </thead> 
                            <tbody>
                                <%
                                    while(rs.next())
                                    {
                                %>
                                <tr>
                                    <td><%=rs.getInt(1)%></td>
                                    <td><%=rs.getInt(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getInt(6)%></td>
                                    <td><%=rs.getInt(7)%></td>
                                    <td><%=rs.getInt(8)%></td>
                                    <td><%=rs.getInt(9)%></td>
                                    <td><%=rs.getString(10)%></td>
                                </tr>
                                
                                <%
                                    }
                                    
                                %>
                            </tbody>
                         </table>
                    </div>
                    <div class="modal-footer">
                        
                    </div>
                    
                </div>
            </div>
        </div>
