<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog data</title>
<meta name="description" content=" ">
<meta name="keywords" content=" " />
</head>
<jsp:include page="../include/common.jsp"></jsp:include>
   <body>
      <jsp:include page="../include/header.jsp"></jsp:include>
       <div class="banner">
            <div class="container">
               <div class="banner_heading">Blog</div>
            </div>
         </div>
       <nav aria-label="breadcrumb" class="breadcrumbbg-full">
            <div class="container">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/" class="home">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Blog</li>
               </ol>
            </div>
         </nav>
      <div class="container main">
      <div class="search main_search">
            <input class="search-input" type="text" placeholder="Search">
         </div>
           <c:forEach  var="content" items="${blogData}">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 title">
               <div class="blog_content">
                 <div class="card-title mb-2"><a href="/blog/${content.titleUrl}">${content.heading}</a></div>
                 <p class="card-text">${fn:escapeXml(fn:substring(content.content.replaceAll('<.*?>' , ""), 0, 300))}</p>
                  <div class="banner-bottom1-grid1-left"><a class="btn btn-primary" href="/blog/${content.titleUrl}">Read More..</a></div>
                  <div class="clearfix"></div>
               </div>
            </div>
          </c:forEach>  
         </div>
	  <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>