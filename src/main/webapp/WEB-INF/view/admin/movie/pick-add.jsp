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
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-header.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-nav.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-content.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/content-pickadd.css">
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
                        <h1>pick 추가</h1>

                    </div>
                    <div id="addpick-search-container">
                        <div id="addpick-input-tag">
                            <select class="custom-select" id="addpick-select-search">
                            <option selected>장르</option>
                            <option value="1">닉네임</option>
                            <option value="2">이메일</option>
                          </select>
                        </div>
                        <div id="addpick-input-text">
                            <div id="addpick-mtext" class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text" id="basic-addon1"><img src="svg/search.svg" alt="bootstrap"></span>
                                </div>
                                <input type="text" class="form-control" placeholder="영화제목" aria-label="Username" aria-describedby="basic-addon1">
                              </div>

                        </div>
                        <div id="addpick-btn-click">
                            <button type="button" class="btn btn-primary btn-sm" id="addpick-select-button">조회</button>
                        </div>



                    </div>
                    
                    <div id="addpick-input-data" class="col-lg-12">
                        <table id="send-table-data" class="table table-hover">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                
                                <th scope="col">영화제목</th>
                                <th scope="col">감독</th>
                                <th scope="col">장르</th>
                                <th scope="col">유형</th>

                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th scope="row">1</th>
                               
                                <td>가구야 공주 이야기</td>
                                <td>타카하타 이사오</td>
                                <td>로맨스</td>
                                <td>애니메이션</td>
                              </tr>
                              <tr>
                                <th scope="row">2</th>
                               
                                <td>가디언즈</td>
                                <td>피터 램지</td>
                                <td>액션</td>
                                <td>애니메이션</td>
                              </tr>
                              <tr>
                                <th scope="row">3</th>
                                
                                <td>가디언즈 오브 갤럭시</td>
                                <td>제임스 건</td>
                                <td>액션</td>
                                <td>sf</td>
                              </tr>
                              <tr>
                                <th scope="row">4</th>
                               
                                <td>가려진 시간</td>
                                <td>엄태화</td>
                                <td>느와르</td>
                                <td>판타지</td>
                              </tr>
                              <tr>
                                <th scope="row">5</th>
                              
                                <td>기생충</td>
                                <td>봉준호</td>
                                <td>액션</td>
                                <td>스릴러</td>
                              </tr>
                              
                            </tbody>
                          </table>
                              
                          <nav id="addpick-data-page" aria-label="Page navigation example">
                              <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">이전</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">다음</a></li>
                              </ul>
                            </nav>
                        </div>
                            
                             
                             
                       
                    <div id="addpick-input-title" >
                        <div id="addpick-ctitle">
                            <h5>컬렉션이름</h3>
                            </div>

                        <div id="addpick-input-cname">
                            <input type="text" class="form-control" placeholder="컬렉션이름" aria-label="cname" aria-describedby="basic-addon1">  

                        </div>

                    </div>
                   
                    <div id="follow-data-container">
                        <table id="follow-data" class="table table-sm" class="col-lg-12">
                            <thead>
                              <tr>
                              
                                <th scope="col">삭제</th>
                                <th scope="col">영화제목</th>
                                <th scope="col">감독</th>
                                <th scope="col">장르</th>
                                <th scope="col">유형</th>
                              </tr>
                            </thead>
                            <tbody id="get-table-data">
                             
                            </tbody>
                          </table>
                    </div>
                              
                              

                    <div id="addpick-submit">
                        <button type="button" class="btn btn-primary">추가하기</button>
                    </div>

                    
                </div>

			
		
	</div>
	</div>
	<script src="/js/jquery.min.js"></script>

    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/admin/adminmovie/js/accordion.js"></script>
    <script>
      $("#send-table-data tbody tr").click(function(){
        
        
        // var on=$(this).addClass('On')
        //  if(on.hasClass('On') === true){
        //    $(this).off('click')
        //  }
        
        //현재클릭된 row(<tr>)
        var tr = $(this);
        var td = tr.children();
        //값저장
        var mname = td.eq(1).text();
        var name = td.eq(2).text();
        var genre = td.eq(3).text();
        var type = td.eq(4).text();
        

        var html = ""
          
      html += '<tr>';
      html += '<td><button id="delbtn" type="button" class="btn btn-primary btn-sm">삭제</button></td>';
      html += '<td>' + mname + '</td>';
      html += '<td>' + name + '</td>';
      html += '<td>' + genre + '</td>';
      html += '<td>' + type + '</td>';
      html += '</tr>';
      
      $("#get-table-data").append(html);
      
      //삭제
      
    })
    
    $('#follow-data').on("click", "button", function() {
  var remove =$(this).closest("tr").remove()
  $(this).removeClass('On')
 
});
    


      </script>
</body>
</html>