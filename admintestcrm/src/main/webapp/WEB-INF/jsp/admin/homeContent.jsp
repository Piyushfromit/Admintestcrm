<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Main Home Content</title>
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
                   <form action="/admin/homeContent" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${homeContent}</h3>
                     <div class="form-group">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="title"  class="form-control form-control-lg"  placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="description" class="form-control form-control-lg" placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="keywords" class="form-control form-control-lg" placeholder="Enter Keywords"/>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="text" name="bannerContent" class="form-control form-control-lg" placeholder="Enter Banner Content"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg" placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                               <input type="text" name="disclaimer" class="form-control form-control-lg" placeholder="Enter Disclaimer"/>
                             
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="form-outline col-md-12 mb-3">
                               <textarea id="content" name="content" class="form-control form-control-lg" ></textarea>
                           </div>
                        </div>
                         <div class="form-group">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <select id="countryCode" name="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example">
                                 <option selected>Select Country</option>
                                 <option value="en">EN</option>
                                 <option value="es">ES</option>
                                 <option value="fr">FR</option>
                              </select>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="countryName" class="form-control form-control-lg" placeholder="Enter Country Name"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnFooter" class="form-control form-control-lg" disabled="disabled"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnHeader" class="form-control form-control-lg" placeholder="Enter TfnHeader"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnPopup" class="form-control form-control-lg" placeholder="Enter TfnPopup"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <input type="text" name="tfnFooter" class="form-control form-control-lg" placeholder="Enter TfnFooter"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
                           </div>
                        </div>
                     </div>
                    </form>
                  </div>
               </div>
            </div>
          </div>
         </div>
      </section>
     <script>CKEDITOR.replace( 'content' );</script>
     </main>
   </body>
</html>