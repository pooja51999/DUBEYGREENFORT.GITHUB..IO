<%@page import="plantkartaction.PlantOrderAction" %>
<nav class="navbar bg-success navbar-expand-sm navbar-dark">
  <a  href="#" class="navbar-brand">
      &nbsp;<img src="img/LogoPlantKarts.png" style="width: 35px; height: 35px; border-radius: 70px;">&nbsp; &nbsp;
      <span  style="font-weight: bold; color: white">DUBEYGREENFORT </span>
      
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu">
    <span class="navbar-toggler-icon"></span>
  </button>
    
    <%
       String email1=null;
       try
       {
            HttpSession sess1=request.getSession();
            if(sess1!=null)
            {
                email1=sess1.getAttribute("userSessionid").toString();
            }
       }
       catch(Exception e)
       {
            email1="";
       }
       
       PlantOrderAction  aac=new PlantOrderAction();
       int i= aac.orderInKart(email1);
     %>
    
  <div class="navbar-collapse collapse" id="menu">
    <ul class="navbar-nav">
      <li class="nav-item"><a href="index.jsp" class="nav-link" style="font-weight: bold; color: white" >Home</a> </li>
       <li class="nav-item"><a href="#Gallery" class="nav-link" style="font-weight: bold; color: white">Gallery</a> </li>
      <li class="nav-item"><a href="#ser" class="nav-link" style="font-weight: bold; color: white">Service</a></li>
      <li class="nav-item"><a href="#ft" class="nav-link" style="font-weight: bold; color: white">About Us</a></li>
      <li class="nav-item"><a href="user.jsp" class="nav-link" style="color:white"><%=email1%></a></li>
      
          <li><a href="payment.jsp"><img src="img/ci.png" style="height: 40px;width: 40px"><sup><span style="font-weight:800;font-size:20px;color: white"><%=i%></span></sup></a></li>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;
      
      <%
           if(!email1.equals(""))
           {
      %>
      
          <li class="nav-item"><a class="btn btn-danger" href="logout.jsp" class="nav-link" style="color:white">Logout</a></li>
     
      <%
           }
      %>
     

      
    </ul>
  </div>
</nav>