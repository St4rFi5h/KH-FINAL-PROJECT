<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/admin/admin.css">
</head>
<body>
	<div class="container" style="height: 100%;">
		<!--헤더 반응형-->
		<!-- header시작 -->
		<jsp:include page="/WEB-INF/view/admin/inc/header.jsp"/>
		<!-- header 끝 -->
		
		<!--content 반응형--> <!-- row div는 깨면안됨 -->
		<div class="row">
			

				<!--nav영역-->
				<!-- nav시작 -->
				<jsp:include page="/WEB-INF/view/admin/inc/nav.jsp"/>
				<!-- nav끝 -->
				
				<!--section 반응형-->
            <div id="section-col" class="col-lg-10">


                <!-- 바디시작  -->

                <div class="allcontents">
                    <h1 id="title">
                        DB관리-수정
                    </h1>
                    <div class="whiteBox">

                        <div id="movie_poster_box">
                            <img src=http://placehold.it/150x190/ id="movie_poster">
                            <div class="input-group" id="file_upload">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="inputGroupFile04"
                                        aria-describedby="inputGroupFileAddon04">
                                    <label class="custom-file-label" for="inputGroupFile04">포스터를 선택하세요</label>
                                </div>

                                </div>
                            </div>
        
                            <div class="form-group row" id="movie_type_move">
                                <label for="movietype" class="col-sm-2 col-form-label">장르</label>
                                <div class="col-sm-10">
                                    <select class="custom-select" id="movietype">
                                        <option selected>장르를 고르세요</option>
                                        <option value="1">스릴러</option>
                                        <option value="2">액션</option>
                                        <option value="3">로맨스</option>
         
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="movieName" class="col-sm-2 col-form-label">제목</label>
                                <div class="col-sm-10">
                                    <input type="input" class="form-control" id="movieNames">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="movieName" class="col-sm-2 col-form-label">영화ID</label>
                                <div class="col-sm-10">
                                    <input type="input" class="form-control" id="movieId">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="movieName" class="col-sm-2 col-form-label">감독이름</label>
                                <div class="col-sm-10">
                                    <input type="input" class="form-control" id="drName">
                                </div>
                            </div>

                            <div id="dbmanagement-btn-container">
                                <button id="dbmanagement-del-one" type="button" class="btn btn-primary" data-toggle="modal" data-target="#d-del-one">수정</button>
                                 <!--modal1-->
                                 <div class="modal fade" id="d-del-one" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">영화등록</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                        </button>
                                      </div>
                                      <div class="modal-body">
                                       영화를 등록하겠습니까?
                                      </div>
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                        <button type="button" class="btn btn-primary">확인</button>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <button id="dbmanagement-del-all" type="button" class="btn btn-primary">취소</button>
                            </div>

                    </div>



                </div>
            </div>

			
		
	</div>
	</div>
	<script src="/js/jquery.min.js"></script>

    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/admin/adminmovie/js/accordion.js"></script>
</body>
</html>