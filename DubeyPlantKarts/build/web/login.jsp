

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
             <%@include file="loginnav.jsp" %>
             
             <div class="row mt-3">
                 <div class="col-lg-4">
                     
                 </div>
                  <div id="Home" class="col-lg-4">
                      <form method="post" action="LoginServlet">
                          <fieldset class="border p-3">
                              <legend><b>Login</b></legend>
                          <div class="from-group"> 
                              <input type="radio" name="person" value="user"/>&nbsp;User&nbsp;&nbsp;
                              <input type="radio" name="person" value="admin"/>&nbsp;Admin
                          </div>
                          
                          <div class="form-group mt-2">
                              <lebal>USER</lebal>
                              <input type="text" name="user" class="form-control"/>
                          </div>
                          <div class="form-group">
                              <lebal>PASSWORD</lebal>
                              <input type="password" name="password" class="form-control"/>
                          </div>
                          <a href="#" style="text-decoration: none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forgot password?</a>
                          <div class="form-group mt-3">
                              <input type="submit" value="Log In" class="btn btn-success"/>                         
                          </div>
                          <div class="mt-3" style="text-align: center">
                              Don't have an account?<a href="signup.jsp" style="text-decoration: none">&nbsp;Sign Up</a>
                          </div>
                          </fieldset>
                      </form>
                     
                 </div>
                  <div class="col-lg-4">
                     
                 </div>
                 
             </div>
             
        </div>
            
              <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
            
            
    </body>
</html>
