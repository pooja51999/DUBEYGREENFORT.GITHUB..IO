<!--
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container mt-4 shadow-lg" style="background-color:#ccff90">
            <div class="row">
                <div class="col-md-3 mt-2"> </div>
                <div class="col-md-6" style="background-color:#fff59d ">
                    <h2 class="text-dark">Feedback Form</h2>
                    <p class="text-dark"> We would love to hear your thoughts, concerns or problem with anything so we can improve ! </p>
                    <hr>
                    <form style="background-color:#fff59d">
                        <h4>Feedback type</h4>
                        <div class="row">
                            <div class="col-md-4">
                                <input type="radio" name="feed" class="pointer">&nbsp;&nbsp;<label>Good</label>
                            </div>
                            <div class="col-md-4">
                                <input type="radio" name="feed">&nbsp;&nbsp;<label>poor</label>
                            </div>
                            <div class="col-md-4">
                                <input type="radio" name="feed">&nbsp;&nbsp;<label>Excellent</label>
                            </div>
                        </div>
                        
                        <div class="form-group mt-3 mb-3">
    <label class="form-label">Full Name :</label>
    <input type="text" class="form-control" required="required">
</div>
<div class="form-group mb-2">
    <label class="form-label">Email :</label>
    <input type="text" class="form-control" required="required">
</div>

                         <div class="form-group mb-2">
                             <label class="form-label">Describe Feedback :</label>
                             <textarea rows="4" class="form-control" ></textarea>
                        </div>
                       
                        
                         Button trigger modal 
<button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Submit Feedback
</button>

 Modal 
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <h4 class="text-success"> Thank You so Much For Your Feedback..</h4>
      </div>
      <div class="modal-footer">
   
         <a href="user.jsp" class="btn btn-primary data-bs-dismiss="modal"">Ok</a>
      </div>
    </div>
  </div>
</div>
                        
                    </form>
                </div>
            </div>
        </div>
                            
                            
                          
                            
     
        
        
        
        
        
        
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>-->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <div class="container mt-4 shadow-lg" style="background-color:#ccff90">
        <div class="row">
            <div class="col-md-3 mt-2"></div>
            <div class="col-md-6" style="background-color:#fff59d ">
                <h2 class="text-dark">Feedback Form</h2>
                <p class="text-dark">We would love to hear your thoughts, concerns, or problems with anything so we can improve!</p>
                <hr>
                <form id="feedbackForm" style="background-color:#fff59d">
                    <h4>Feedback type</h4>
                    <div class="row">
                        <div class="col-md-4">
                            <input type="radio" name="feed" class="pointer">&nbsp;&nbsp;<label>Good</label>
                        </div>
                        <div class="col-md-4">
                            <input type="radio" name="feed">&nbsp;&nbsp;<label>Poor</label>
                        </div>
                        <div class="col-md-4">
                            <input type="radio" name="feed">&nbsp;&nbsp;<label>Excellent</label>
                        </div>
                    </div>

                    <div class="form-group mt-3 mb-3">
                        <label class="form-label">Full Name:</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group mb-2">
                        <label class="form-label">Email:</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group mb-2">
                        <label class="form-label">Describe Feedback:</label>
                        <textarea rows="4" class="form-control"></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Submit Feedback</button>
                </form>
                <div id="feedbackModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header" style="background-color:#eceff1  ">
                                
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="background-color: #eceff1">
                                <h4 class="text-success">Thank You so Much For Your Feedback..</h4>
                            </div>
                            <div class="modal-footer" style="background-color:#eceff1">
                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal"><a href="user.jsp" style="text-decoration: none;color: white">Ok</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script>
document.getElementById("feedbackForm").addEventListener("submit", function(event) {
    var form = event.target;
    var isValid = form.checkValidity();
    if (!isValid) {
        event.preventDefault();
        event.stopPropagation();
        form.classList.add('was-validated');
    } else {
        var inputs = form.querySelectorAll("input[required], textarea[required]");
        var hasEmptyFields = false;
        for (var i = 0; i < inputs.length; i++) {
            if (!inputs[i].value) {
                hasEmptyFields = true;
                inputs[i].classList.add('is-invalid');
            } else {
                inputs[i].classList.remove('is-invalid');
            }
        }
        if (hasEmptyFields) {
            event.preventDefault();
            event.stopPropagation();
        } else {
            // Open the modal only if there are no empty fields
            $('#feedbackModal').modal('show');
            event.preventDefault();
            event.stopPropagation();
        }
    }
});

// Optional: Clear validation styles and reset form when modal is closed
$('#feedbackModal').on('hidden.bs.modal', function() {
    var form = document.getElementById("feedbackForm");
    form.classList.remove('was-validated');
    form.reset();
});
</script>




