<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true" id="showplant" >
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5>All Plants Details:</h5>
                        <button type="button" class="close" data-bs-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-primary table-bordered">
                            <thead>
                            <th>PlantID</th>
                            <th>PlantName</th>
                            <th>PlantDetail</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Sell Quantity</th>
                            <th>Payment Status</th>
                            <th>Delete</th>
                            </thead>
                            <tbody>
                                <%
                                     PlantAction pac=new PlantAction();
                                     ResultSet rs1=pac.getPlants(); 
                                     while(rs1.next())
                                     {
                                %>
                                <tr>
                                    <td><%=rs1.getInt(1)%></td>
                                    <td><%=rs1.getString(2)%></td>
                                    <td><%=rs1.getString(3)%></td>
                                    <td><%=rs1.getInt(4)%></td>
                                    <td><%=rs1.getInt(5)%></td>
                                    <td><%=rs1.getInt(6)%></td>
                                    <td><%=rs1.getString(7)%></td>
                                    <td><a href="PlantDeleteServlet?pid=<%=rs1.getInt(1)%>" onclick="return confirm('Are you Sure Want To Delete?')">[DELETE]</a></td>
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
