<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta id="viewport" name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
<link rel="shortcut icon" href="/resources/images/favicon.png" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/coustom.js"></script>
<script src="/resources/js/bootstrap.js"></script>
<script src="https://kit.fontawesome.com/fddf5c0916.js"></script>
<script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>

<c:set var="req" value="${pageContext.request}" />
<c:set var="pageURL" value="${fn:replace(req.requestURL, fn:substring(req.requestURI, 1, fn:length(req.requestURI)), req.contextPath)}" />
<link rel="canonical" href="${pageURL}${requestScope['javax.servlet.forward.request_uri']}">
 
