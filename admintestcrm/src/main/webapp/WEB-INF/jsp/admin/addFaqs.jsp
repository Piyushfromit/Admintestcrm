<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Add Faqs Content</title>
      <jsp:include page="../include/common.jsp"></jsp:include>
   </head>
   <body>
   <jsp:include page="sideBar.jsp"></jsp:include>
   <main> 
      <section class="vh-100">
         <div class="main_con container">
         <div class="row d-flex justify-content-center align-items-center">
            <div class="col-12 col-md-12 col-lg-12 col-xl-6">
               <div class="card-fluid">
                  <div class="card-body p-5 text-center">
                   <form action="/admin/addBlog" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${faqs}</h3>
                     <div class="form-group">
                        <div class="col-md-6 mb-3">
                           <div class="form-outline">
                              <input type="text" name="url" class="form-control form-control-lg" placeholder="Enter Url" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-6 mb-3">
                           <div class="form-outline">
                           	   <input type="text" name="faQues" class="form-control form-control-lg" placeholder="Enter FAqs Question"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        </div>
                        <div class="form-group">
                           <div class="form-outline col-md-12 mb-3">
                               <textarea id="faqAns" name="faqAns" class="form-control form-control-lg" required="required"></textarea>
                           </div>
                        </div>
                         <div class="form-group">
                           <div class="col-md-6 mb-3">
                              <div class="form-outline">
                                 <input type="date" name="date" class="form-control form-control-lg" placeholder="Enter Posttime" required="required"/>
                              </div>
                           </div>
                           <div class="col-md-6 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
	                                 <select id="faqStatus" name="faqStatus" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <option selected>Select Status</option>
		                                 <option value="Active">Active</option>
		                                 <option value="InActive">InActive</option>
		                             </select>
                                 </div>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                        </div>
                      </form>
                      <div class="form-group">
                           <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
          </div>
      </section>
     <script>CKEDITOR.replace( 'faqAns' );</script>
     </main>
   </body>
</html>