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
            <div class="row">
                   <%@include file="top.jsp" %>
                  
            </div>
                   <%@include file="nav.jsp" %>          
             <div class="row">
                 <div class="col-lg-3"></div>
                 <div class="col-lg-6">
                     <form method="post" action="SigUpServlet">
                         <fieldset class="border p-3">
                             <legend class="w-auto">Sign up</legend>   
                             
                         <div clas="form-group">
                             <label>Name</label>
                             <input type="text" name="user" class="form-control"/>
                         </div>
                         <div clas="form-group">
                             <label>Mobile</label>
                             <input type="text" name="mobile" class="form-control"/>
                         </div>
                         <div clas="form-group">
                             <label>Email</label>
                             <input type="email" name="email" class="form-control"/>
                         </div>
                         <div clas="form-group">
                             <label>Passworld</label>
                             <input type="password" name="password" class="form-control"/>
                         </div>
                         <div clas="form-group">
                             <label>Confirm Passworld</label>
                             <input type="password" name="cpassword" class="form-control"/>
                         </div><br>
                         
                         
                         <div class="form-group">
                             <input type="submit" value="Sign up" class="btn btn-success"/>
                              <input type="Reset" value="reset" class="btn btn-info"/>
                         </div>
                         </fieldset> 
                     </form>
                     
                 </div>
                 <div class="col-lg-3"></div>
             </div>
        </div>
        
            
              <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
            
            
    </body>
</html>
