<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Main All Article Content</title>
      <jsp:include page="../include/common.jsp"></jsp:include>
      <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
   </head>
   <body>
   <jsp:include page="sideBar.jsp"></jsp:include>
   <main> 
      <section class="vh-100">
         <div class="main_con container">
         <div class="row d-flex justify-content-center align-items-center">
            <div class="col-12 col-md-12 col-lg-12 col-xl-6">
               <div class="card-fluid main">
                  <div class="card-body p-5">
                     <h3 class="mb-5 homes data  text-center">${article}</h3>
                      <table id="table_id" class="display">
					    <thead>
					        <tr>
					            <th>Content Id</th>
					            <th>Heading</th>
					            <th>Status</th>
					            <th>Edit</th>
					            <th>Delete</th>
					        </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="content" items="${newsArticle}">
					        <tr>
					        	<td>${content.id}</td>
					            <td width="100%">${content.heading}</td>
					            <td>${content.status}</td>
					            <td><a href="/admin/editNewsArticle/${content.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
					            <td><a href="/admin/deleteNewsArticle/${content.id}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
					        </tr>
					     </c:forEach>
					    </tbody>
					</table>
					<a href="/admin/newsArticle" class="btn btn-primary btn-lg">Add Content</a>
                  </div>
               </div>
            </div>
          </div>
         </div>
      </section>
     </main>
     <script>
     $(document).ready( function () {
    	    $('#table_id').DataTable();
    	} );
     </script>
     <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
   </body>
</html>