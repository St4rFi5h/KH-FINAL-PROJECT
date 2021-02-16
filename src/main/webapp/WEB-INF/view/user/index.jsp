<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EUTCHAPEDIA</title>
	<link rel="stylesheet" href="/css/movie/index.css">
	<!--favicon-->
	<link rel="icon" href="/img/logo_favicon.ico">
	<link rel="shortcut icon" href="/img/logo_favicon.ico">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"><!--icon-->
	<link rel="stylesheet" href="/css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	// inc
	String inc = "index_main.jsp";
	if(request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
		
	}
	
	%>
    <!-- header -->
  
    <%@ include file="header.jsp" %>

    <!-- main -->
	<div class="section">
	<jsp:include page="<%=inc %>"/>
	</div>
	 <!-- footer -->
   	<%@ include file="footer.jsp" %>
   	
   <script src="/js/movie/bootstrap.bundle.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</body>
</html>