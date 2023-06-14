

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
                email=sess.getAttribute("userSessionid").toString();
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
            
        %>
        <div class="container-fluid">
            <%@include file="userpendingorder.jsp" %>
            <%@include file="usersuccesspayment.jsp" %>
            <div class="row">
                 <%@include file="usertopbar.jsp" %>
            </div>
            <div >
                <%@include file="usernav.jsp" %>
                
                
                    <div class="d-flex justify-content-center align-items-center m-4">
                    <div class="col-lg-2 mt-2">
                          <a href="index.jsp" class="btn btn-success btn-sm">Add Plants<img src="img/add.png" style="width: 15px; height: 15px"></a>
                    </div>
                    <div class="col-lg-2 mt-2">
                          <a href="#" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#pendinguserorder" style="cursor: pointer">Pending Orders</a>
                    </div>
                     <div class="col-lg-2 mt-2">
                         <a href="#" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#Successuserorder" style="cursor: pointer">Payment Success</a>
                    </div>
                    
                    <div class="col-lg-2 mt-2">
                        <a href="signup.jsp" class="btn btn-success btn-sm">Update Profile</a>
                    </div>
                    
                    </div>
              
               
            </div>
            
        </div>  
        
       
        
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
            
    </body>
</html>
