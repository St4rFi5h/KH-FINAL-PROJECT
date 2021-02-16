<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap-grid.min.css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/admin/admin-header.css">
<link rel="stylesheet" href="css/admin/admin-nav.css">
<link rel="stylesheet" href="css/admin/admin-content.css">
<link rel="stylesheet" href="css/admin/comment-inc.css">
</head>
<body>
	<div class="container" style="height: 100%;">
		<!--헤더 반응형-->
		<!-- header시작 -->
		<jsp:include page="/WEB-INF/view/admin/inc/header.jsp"/>
		<!-- header 끝 -->
		
		<!--content 반응형--> <!-- row div는 깨면안됨 -->
		<div class="row">
			<div id="nav-col" class="col-lg-2">

				<!--nav영역-->
				<!-- nav시작 -->
				<jsp:include page="/WEB-INF/view/admin/inc/header.jsp"/>
				<!-- nav끝 -->

			
		</div>
	</div>
	<script src="js/jquery.min.js"></script>

	<script src="js/bootstrap.bundle.min.js"></script>

	<script src="js/accordion.js"></script>
</body>
</html>