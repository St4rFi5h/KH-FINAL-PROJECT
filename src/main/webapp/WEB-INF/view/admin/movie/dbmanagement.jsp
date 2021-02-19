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
                  <div id="pick-h1">
                    <h1>DB관리</h1>

                </div>  
                  <div id="dbmanagement-search-container">
                        <div id="dbmanagement-input-tag">
                            <select class="custom-select" id="dbmanagement-select-search">
                            <option selected>장르</option>
                            <option value="1">닉네임</option>
                            <option value="2">이메일</option>
                          </select>
                        </div>
                        <div id="dbmanagement-input-text">
                            <div id="dbmanagement-mtext" class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text" id="basic-addon1"><img src="/svg/admin/search.svg" alt="bootstrap"></span>
                                </div>
                                <input type="text" class="form-control" placeholder="영화제목" aria-label="Username" aria-describedby="basic-addon1">
                              </div>

                        </div>
                        <div id="dbmanagement-btn-click">
                            <button type="button" class="btn btn-primary btn-sm" id="dbmanagement-select-button">조회</button>
                        </div>



                    </div>
                    
                    <div id="dbmanagement-input-data" class="col-lg-12">
                        <table id="db-info" class="table table-hover">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">선택</th>
                                <th scope="col">ID</th>
                                <th scope="col">감독</th>
                                <th scope="col">장르</th>
                                <th scope="col">유형</th>

                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th scope="row">1</th>
                                <td><input type="checkbox"/></td>
                                <td>가구야 공주 이야기</td>
                                <td>타카하타 이사오</td>
                                <td>로맨스</td>
                                <td>애니메이션</td>
                              </tr>
                              <tr>
                                <th scope="row">2</th>
                                <td><input type="checkbox"/></td>
                                <td>가디언즈</td>
                                <td>피터 램지</td>
                                <td>액션</td>
                                <td>애니메이션</td>
                              </tr>
                              <tr>
                                <th scope="row">3</th>
                                <td><input type="checkbox"/></td>
                                <td>가디언즈 오브 갤럭시</td>
                                <td>제임스 건</td>
                                <td>액션</td>
                                <td>sf</td>
                              </tr>
                              <tr>
                                <th scope="row">4</th>
                                <td><input type="checkbox"/></td>
                                <td>가려진 시간</td>
                                <td>엄태화</td>
                                <td>느와르</td>
                                <td>판타지</td>
                              </tr>
                              <tr>
                                <th scope="row">5</th>
                                <td><input type="checkbox"/></td>
                                <td>기생충</td>
                                <td>봉준호</td>
                                <td>액션</td>
                                <td>스릴러</td>
                              </tr>
                              
                            </tbody>
                          </table>
                          <div id="dbmanagement-btn-container">
                            <button id="dbmanagement-del-one" type="button" class="btn btn-primary" data-toggle="modal" data-target="#d-del-one">선택삭제</button>
                             <!--modal1-->
                             <div class="modal fade" id="d-del-one" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">해제</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                   선택 삭제를 하시겠습니까?
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                    <button type="button" class="btn btn-primary">확인</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <button id="dbmanagement-del-all" type="button" class="btn btn-primary" OnClick="location.href ='addMovie.html'" >전체삭제</button>
                        </div>

                          <nav id="dbmanagement-data-page" aria-label="Page navigation example">
                            <ul class="pagination">
                              <li class="page-item"><a class="page-link" href="#">이전</a></li>
                              <li class="page-item"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item"><a class="page-link" href="#">다음</a></li>
                            </ul>
                          </nav>
                      </div>
                </div>
			
		
	</div>
	</div>
	<script src="js/jquery.min.js"></script>

	<script src="js/bootstrap.bundle.min.js"></script>

	<script src="js/accordion.js"></script>
</body>
</html>