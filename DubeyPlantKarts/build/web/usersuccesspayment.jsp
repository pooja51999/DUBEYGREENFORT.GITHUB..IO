

<%@page import="plantkartaction.UserPlantAction" %>
<%@page import="java.sql.ResultSet" %>
<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="Successuserorder" >
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>Chcek Your Successfull Payment:</h5>
                        <button type="button" class="close" data-bs-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <%
                            UserPlantAction usac=new UserPlantAction();
                            ResultSet rs1=usac.getSuccessOrder(email);     
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
                                    while(rs1.next())
                                    {
                                %>
                                <tr>
                                    <td><%=rs1.getInt(1)%></td>
                                    <td><%=rs1.getInt(3)%></td>
                                    <td><%=rs1.getString(4)%></td>
                                    <td><%=rs1.getInt(6)%></td>
                                    <td><%=rs1.getInt(7)%></td>
                                    <td><%=rs1.getInt(8)%></td>
                                    <td><%=rs1.getInt(9)%></td>
                                    <td style="color: green"><%=rs1.getString(10)%></td>
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

