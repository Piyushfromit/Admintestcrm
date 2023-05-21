<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Contact Us</title>
      <meta name="description" content=" ">
      <meta name="keywords" content=" " />
      <jsp:include page="../include/common.jsp"></jsp:include>
   <body>
      <jsp:include page="../include/header.jsp"></jsp:include>
      <div class="banner">
         <div class="container">
            <div class="banner_heading">Contact Us</div>
         </div>
      </div>
      <section class="h-100 gradient-form">
         <div class="container py-5 h-100 mains">
            <div class="row g-0">
               <div class="col-lg-6">
                  <div class="card-body p-md-5 mx-md-4">
                     <div class="text-center">
                       <ol class="list-group list-group-light list-group-numbered">
						  <li class="list-group-item d-flex justify-content-between align-items-start">
						    <div class="ms-2 me-auto">
						      <div class="fw-bold"><i class="fa fa-map-marker" aria-hidden="true"></i> Address</div>Street Address: 2-industrial Park Dr, Waldorf, Maryland, United States 20602
						    </div>
						  </li>
						  <li class="list-group-item d-flex justify-content-between align-items-start">
						    <div class="ms-2 me-auto">
						      <div class="fw-bold"><i class="fa fa-phone" aria-hidden="true"></i> Lets Talk</div>+1-888-888-8888
						    </div>
						  </li>
						  <li class="list-group-item d-flex justify-content-between align-items-start">
						    <div class="ms-2 me-auto">
						      <div class="fw-bold"><i class="fa fa-envelope-o" aria-hidden="true"></i> General Support</div>support@reservationdeal.us
						    </div>
						  </li>
						</ol>
                     </div>
                  </div>
               </div>
               <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                  <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                     <div class="contact_form_field">
                        <h4>Send Us A Message</h4>
                        <p>Feel free to drop us a Message!</p>
                        <form action="/contact-us" method="post">
                           <div class="form-group">
                              <input name="name" class="input_focus form-control textOnly" required="required" placeholder="Enter your name...">
                           </div>
                           <div class="form-group">
                              <input name="emailId" class="input_focus form-control" required="required" placeholder="Enter your email...">
                           </div>
                           <div class="form-group">
                              <input name="phone" class="input_focus form-control numbersOnly" required="required" placeholder="Enter your number...">
                           </div>
                           <div class="form-group">
                              <textarea name="message" rows="5" cols="45" class="input_focus form-control" required="required" placeholder="Enter your message..."></textarea>
                           </div>
                           <div class="form-group">
                              <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <jsp:include page="../include/footer.jsp"></jsp:include>
   </body>
</html>