<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
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
                   <form:form action="/admin/homeEditContent/${id}" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${homeContent}</h3>
                     <div class="form-group">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="title"  class="form-control form-control-lg"  placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="description" class="form-control form-control-lg" placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="keywords" class="form-control form-control-lg" placeholder="Enter Keywords"/>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="bannerContent" class="form-control form-control-lg" placeholder="Enter Banner Content"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                               <form:input type="text" path="disclaimer" class="form-control form-control-lg" placeholder="Enter Disclaimer"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="form-outline col-md-12 mb-3">
                               <form:textarea id="content" path="content" class="form-control form-control-lg" ></form:textarea>
                           </div>
                        </div>
                         <div class="form-group">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:select id="countryCode" path="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example">
                                 <form:option value="en">EN</form:option>
                                 <form:option value="es">ES</form:option>
                                 <form:option value="fr">FR</form:option>
                              </form:select>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="countryName" class="form-control form-control-lg" placeholder="Enter Country Name"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="" class="form-control form-control-lg" disabled="disabled"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="tfnHeader" class="form-control form-control-lg" placeholder="Enter TfnHeader"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="tfnPopup" class="form-control form-control-lg" placeholder="Enter TfnPopup"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="tfnFooter" class="form-control form-control-lg" placeholder="Enter TfnFooter"/>
                                 <div class="form-outline"> 
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
                           </div>
                        </div>
                     </div>
                    </form:form>
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