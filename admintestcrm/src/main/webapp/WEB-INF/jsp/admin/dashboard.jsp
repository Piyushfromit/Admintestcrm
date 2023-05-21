<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Home All Content</title>
      <jsp:include page="../include/common.jsp"></jsp:include>
   </head>
   <body>
      <jsp:include page="sideBar.jsp"></jsp:include>
      <section class="h-100 gradient-form">
         <div class="main_con red container">
            <div class="row g-0">
               <div class="col-lg-12">
                  <div class="card-body p-md-5 mx-md-4">
                     <div class="form-group text-center">
                        <div class="col-md-4 mb-3">
                           <form action="/admin/dashboard" method="post">
                              <div class="heading_home"><a href="/admin/homeContent"><span class="text_home">New Add Languages</span></a></div>
                              <div class="form-outline">
                                 <select id="countryCode" name="countryCode" class="form-select form-control form-control-lg" aria-label="Default select example">
                                    <option selected>Select Country</option>
                                    <c:forEach var="content" items="${contents}">
                                       <c:set var = "code" value = "${fn:toUpperCase(content.countryCode)}" />
                                       <option value="${content.countryCode}">${code}</option>
                                    </c:forEach>
                                 </select>
                              </div>
                              <div class="form-group">
                                 <button class="btn btn-primary btn-lg btn-block main" type="submit">Submit</button>
                              </div>
                           </form>
                        </div>
                        <div class="col-md-4 mb-3">
                           <form action="/admin/dashboard" method="post">
                              <div class="heading_home"><a href="/admin/indexContent"><span class="text_home">Page Content</span></a></div>
                              <div class="form-outline">
                                 <select name="pageType" class="form-select form-control form-control-lg" aria-label="Default select example">
                                    <option selected>Select Content Type</option>
                                    <c:forEach var="content" items="${index}">
                                       <option value="${content.pageType}">${content.pageType}</option>
                                    </c:forEach>
                                 </select>
                              </div>
                              <div class="form-group">
                                 <button class="btn btn-primary btn-lg btn-block main" type="submit">Submit</button>
                              </div>
                           </form>
                        </div>
                        <div class="col-md-4 mb-3">
                           <form action="#/admin/" method="post">
                              <div class="heading_home"><a href="/admin/homeContent"><span class="text_home">HomeContent</span></a></div>
                              <div class="form-outline">
                                 <select class="form-select form-control form-control-lg" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                 </select>
                              </div>
                              <div class="form-group">
                                 <button class="btn btn-primary btn-lg btn-block main" type="submit">Submit</button>
                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
               <c:forEach var="data" items="${homeContent}">
                  <div class="main_con sits container">
                     <ul class="list-group main">
                        <li class="list-group-item active"><< Back</li>
                        <li class="list-group-item main"><img src="/resources/images/blog/${data.imgUrl}"></li>
                        <li class="list-group-item">${data.id}</li>
                        <li class="list-group-item">${data.title}</li>
                        <li class="list-group-item">${data.description}</li>
                        <li class="list-group-item">${data.keywords}</li>
                        <li class="list-group-item">${data.bannerContent}</li>
                        <li class="list-group-item">${data.content}</li>
                        <li class="list-group-item">${data.disclaimer}</li>
                        <li class="list-group-item">${data.tfnHeader}</li>
                        <li class="list-group-item">${data.tfnPopup}</li>
                        <li class="list-group-item">${data.tfnFooter}</li>
                        <li class="list-group-item">${data.countryCode}</li>
                        <li class="list-group-item">${data.countryName}</li>
                     </ul>
                  </div>
               </c:forEach>
               <c:forEach var="data" items="${indexContents}">
                  <div class="main_con sits container">
                     <ul class="list-group main">
                        <li class="list-group-item active"><< Back</li>
                        <li class="list-group-item main"><img src="/resources/images/blog/${data.imgUrl}"></li>
                        <li class="list-group-item">${data.title}</li>
                        <li class="list-group-item">${data.description}</li>
                        <li class="list-group-item">${data.keywords}</li>
                        <li class="list-group-item">${data.bannerContent}</li>
                        <li class="list-group-item">${data.tfnHeader}</li>
                        <li class="list-group-item">${data.tfnPopup}</li>
                        <li class="list-group-item">${data.tfnFooter}</li>
                        <li class="list-group-item">${data.pageType}</li>
                     </ul>
                  </div>
               </c:forEach>
            </div>
         </div>
      </section>
   </body>
</html>