<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Go through the ways to get the best deal on flight</title>
      <meta name="description" content=" ">
      <meta name="keywords" content=" " />
      <jsp:include page="include/common.jsp"></jsp:include>
   <body>
      <jsp:include page="include/header.jsp"></jsp:include>
      <main>
         <div class="banner"></div>
         <section class="h-100 gradient-form">
			  <div class="container py-5 h-100">
	          <div class="row g-0">
	            <div class="col-lg-6">
	              <div class="card-body p-md-5 mx-md-4">
	                <div class="text-center">
	                  <img src="/resources/images/banners.jpg" alt=" " class="img-responsive home"></a>
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
	              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
	                <p class="small_home">${homeContent.content}</p>
	              </div>
	            </div>
	          </div>
	        </div>
			</section>
         <div class="banner-bottom1" style=" background:#fff;  ">
            <div class="container">
               <div class="text-center destinations">Popular Destinations</div>
               <div class="banner-bottom1-grids">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 banner-bottom1-grid">
                     <div class="banner-bottom1-grid1">
                        <a href="javascript:"><img src="/resources/images/orlando.png" alt=" " class="img-responsive"></a>
                        <div class="banner-bottom1-grid1-left">Orlando</div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 banner-bottom1-grid">
                     <div class="banner-bottom1-grid1">
                        <a href="javascript:"><img src="/resources/images/dubai.png" alt=" " class="img-responsive"></a>
                        <div class="banner-bottom1-grid1-left">Dubai</div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 banner-bottom1-grid">
                     <div class="banner-bottom1-grid1">
                        <a href="javascript:"><img src="/resources/images/rome.png" alt=" " class="img-responsive"></a>
                        <div class="banner-bottom1-grid1-left">Rome</div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="clearfix"> </div>
               </div>
               <div class="banner-bottom1-grids">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 banner-bottom1-grid">
                     <div class="banner-bottom1-grid1">
                        <a href="javascript:"><img src="/resources/images/paris.png" alt=" " class="img-responsive"></a>
                        <div class="banner-bottom1-grid1-left">Paris</div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 banner-bottom1-grid">
                     <div class="banner-bottom1-grid1">
                        <a href="javascript:"><img src="/resources/images/london.png" alt=" " class="img-responsive"></a>
                        <div class="banner-bottom1-grid1-left">London</div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 banner-bottom1-grid">
                     <div class="banner-bottom1-grid1">
                        <a href="javascript:"><img src="/resources/images/boston.png" alt=" " class="img-responsive"></a>
                        <div class="banner-bottom1-grid1-left">Boston</div>
                        <div class="clearfix"> </div>
                     </div>
                  </div>
                  <div class="clearfix"> </div>
               </div>
            </div>
         </div>
         <div class="container">
           <div class="text-center destinations">Recent Blog</div>
           <c:forEach  var="content" items="${blogDetails}" begin="0" end="2">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
               <div class="blog_content">
                 <div class="card-title mb-2"><a href="/blog/${content.titleUrl}">${content.heading}</a></div>
                 <p class="card-text">${fn:escapeXml(fn:substring(content.content.replaceAll('<.*?>' , ""), 0, 300))}</p>
                  <div class="banner-bottom1-grid1-left"><a class="btn btn-primary" href="/blog/${content.titleUrl}">Read More..</a></div>
                  <div class="clearfix"></div>
               </div>
            </div>
          </c:forEach>  
         </div>
      </main>
      <jsp:include page="include/footer.jsp"></jsp:include>
   </body>
   </head>
</html>