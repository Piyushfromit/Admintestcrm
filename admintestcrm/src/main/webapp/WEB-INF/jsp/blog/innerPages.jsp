<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
   <c:forEach var="data" items="${blogTitleData}">
      <head>
         <meta charset="ISO-8859-1">
         <title>${data.title}</title>
         <meta name="description" content="${data.description}">
         <meta name="keywords" content="${data.keywords}" />
         <meta name="author" content="crenoveative">
      </head>
      <jsp:include page="../include/common.jsp"></jsp:include>
      <body>
         <jsp:include page="../include/header.jsp"></jsp:include>
         <div class="banner">
            <div class="container">
               <div class="banner_heading">${data.heading}</div>
            </div>
         </div>
         <nav aria-label="breadcrumb" class="breadcrumbbg-full">
            <div class="container">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/" class="home">Home</a></li>
                  <li class="breadcrumb-item"><a href="/blog" class="home">Blog</a></li>
                  <li class="breadcrumb-item active" aria-current="page">${data.heading}</li>
               </ol>
            </div>
         </nav>
         <main class="destination_details destination_page">
            <div class="container content_div">
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                     <div class="blog-inner-box2">
                        ${data.content}
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                     <ul class="side_accordion">
                        <div class="heading">Recent Blog</div>
                        <h3><a href="/generatePdf/${data.titleUrl}">Generate PDF</a></h3>
                        <c:forEach var="data" items="${blogData}" begin="0" end="9">
                           <li>
                              <a href="/blog/${data.titleUrl}">${data.heading}</a>
                           </li>
                        </c:forEach>
                     </ul>
                  </div>
               </div>
            </div>
         </main>
         <jsp:include page="../include/footer.jsp"></jsp:include>
      </body>
   </c:forEach>
</html>