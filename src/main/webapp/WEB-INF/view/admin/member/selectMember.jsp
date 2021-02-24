<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/bootstrap-grid.min.css">
<link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/admin/admin.css">
<title>회원정보조회</title>
</head>
<div class="container">
	<jsp:include page="/WEB-INF/view/admin/inc/header.jsp" />

	<!--content 반응형-->
	<div class="row">
		<jsp:include page="/WEB-INF/view/admin/inc/nav.jsp" />
		<!--section 반응형-->
		<div id="section-col" class="col-lg-10">

			<!--바디시작-->
			<div id="title">
				<h1 style="font-weight: bold;">회원정보조회</h1>
			</div>
			<div id="allsize" class="col-lg-12 ">
				<div id="search-block" class="col-lg-12 ">

					<select class="custom-select" id="select-search">
						<option selected>검색항목을 고르세요</option>
						<option value="1">닉네임</option>
						<option value="2">이메일</option>
					</select> <input class="form-control" type="text" id="searchbar"
						placeholder="내용을입력해주세요">
					<button type="button" class="btn btn-primary " id="search-btn">검색</button>
					</br>

				</div>

				<div id="table-contorll" class="col-lg-12 ">
					<table class="table table-hover col-lg-12">
						<thead>
							<tr>
								<th scope="col">No.</th>
								<th scope="col"></th>
								<th scope="col">이름</th>
								<th scope="col">이메일</th>
								<th scope="col">차단여부</th>
								<th scope="col">가입날자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="m" items="${memberlist}" end="10">
								<tr>
									<th scope="row">1</th>
									<td><input class="form-check-input" type="checkbox"
										value="" id="userSelect"></td>
									<td>${m.memberNickname}</td>
									<td>${m.memberEmail}</td>
									<td>${m.memberStatus}</td>
									<td>${m.memberJoinRoute}</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					</br>
					</br>
					</br>
					</br>
					</br>
					</br>
					</br>
					</br>
					<div>

						<select class="custom-select" id="select-block">
							<option selected>차단 종류를 고르세요</option>
							<option value="1">영구차단</option>
							<option value="2">코멘트차단</option>
						</select>

						<button type="button" class="btn btn-primary " id="block-btn"
							data-toggle="modal" data-target="#blockUser">차단</button>
						<button type="button" class="btn btn-primary " id="delete-btn"
							data-toggle="modal" data-target="#deleteUser">삭제</button>

						<div class="modal fade" id="blockUser" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">유저차단</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">선택한 유저를 차단하겠습니까?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-primary">확인</button>
									</div>
								</div>
							</div>
						</div>


						<div class="modal fade" id="deleteUser" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">유저삭제</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">선택한 유저를 삭제하겠습니다?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-primary">확인</button>
									</div>
								</div>
							</div>
						</div>







					</div>

					<div id="navigation">
						<c:set var="page" value="${(param.p == null)?1:param.p}" />
						<c:set var="startNum" value="${page-(page-1)%5}" />
						<c:set var="lastNum"
							value="${fn:substringBefore(Math.ceil(count/10),'.')}" />

						<div style="margin-bottom: 30px">
							<span>현재페이지 ${(empty param.p)?1:param.p}</span> /${lastNum} page
						</div>
						<nav id="dbmanagement-data-page"
							aria-label="Page navigation example">
							<ul id="dbmanagement-pagiedit" class="pagination">
								<c:if test="${startNum-1>0}">
									<li class="page-item"><a class="page-link"
										href="?p=${startNum-1}&f=${param.f}&q=${param.q}">이전</a></li>
								</c:if>
								<c:if test="${startNum<=1}">
									<li class="page-item"><a class="page-link"
										onclick="alert('첫번째 페이지입니다.')">이전</a></li>
								</c:if>

								<c:forEach var="i" begin="0" end="4">
									<c:if test="${(startNum+i) <= lastNum}">
										<li class="page-item ${(page==(startNum+i))?'active':''}"><a
											class="page-link"
											href="?p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i}</a></li>
									</c:if>

								</c:forEach>
								<c:if test="${startNum+4<lastNum}">
									<li class="page-item"><a class="page-link"
										href="?p=${startNum+5}&f=${param.f}&q=${param.q}">다음</a></li>
								</c:if>
								<c:if test="${startNum+4>=lastNum}">
									<li class="page-item"><a class="page-link"
										onclick="alert('다음 페이지가 없습니다.')">다음</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>








		</div>
	</div>
</div>






<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/accordion.js"></script>
<body>

</body>
</html>