<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Main Add Blog Content</title>
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
                   <form:form action="/admin/editBlog/${id}" method="post" enctype= "multipart/form-data">
                     <h3 class="mb-5 homes">${blog}</h3>
                     <div class="form-group">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="title"  class="form-control form-control-lg"  placeholder="Enter Title" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="description" class="form-control form-control-lg" placeholder="Enter Title" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="keywords" class="form-control form-control-lg" placeholder="Enter Keywords" required="required"/>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <form:input type="text" path="heading" class="form-control form-control-lg" placeholder="Enter Heading" required="required"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                              <input type="file" name="file" class="form-control form-control-lg" placeholder="Enter Title"/>
                           </div>
                        </div>
                        <div class="col-md-4 mb-3">
                           <div class="form-outline">
                           		<form:input type="text" path="titleUrl" class="form-control form-control-lg" placeholder="Enter Title Url"/>
                              <div class="form-outline"> 
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="form-outline col-md-12 mb-3">
                               <form:textarea id="content" path="content" class="form-control form-control-lg" required="required"></form:textarea>
                           </div>
                        </div>
                         <div class="form-group">
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="posttime" class="form-control form-control-lg" placeholder="Enter Date"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                 <form:input type="text" path="categoryName" class="form-control form-control-lg" placeholder="Enter CategoryName"/>
                              </div>
                           </div>
                           <div class="col-md-4 mb-3">
                              <div class="form-outline">
                                  <div class="form-outline">
	                                 <form:select id="status" path="status" class="form-select form-control form-control-lg" aria-label="Default select example" required="required">
		                                 <form:option value="Active">Active</form:option>
		                                 <form:option value="InActive">InActive</form:option>
		                             </form:select>
                                 </div>
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