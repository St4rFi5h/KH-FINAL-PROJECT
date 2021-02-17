<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-header.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-nav.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-content.css">
    <link rel="stylesheet" href="/css/admin/adminmovie/admin-dashboard.css">
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
                    <div id="dash-container" class="col-lg-6">
                        <div id="dash-comment" class="col-lg-12">
                            <canvas id="commentc" width="400px" height="380px"></canvas>
                        </div>
                        <div id="dash-search" class="col-lg-12">
                            <canvas id="comments" width="400px" height="380px"></canvas>
                        </div>
                    </div>
                        <div id="newperson-container" class="col-lg-6">

                            <div id="newperson">
                                <div id="newperson-header">
                                    <h4>New회원</h3>
                                    <small>더보기</small>
                                </div>
                                <!--new 사용자 반복-->
                                <div id="newperson-main" style="height: 50px;">
                                    <div id="dash-main-img" style="display: inline-block;">
                                        <img src="img/person.png" alt="" style="width: 30px; height: 30px; margin-bottom: 20px;">
                                    </div>
                                    <div id="dash-main-info" style="display: inline-block; font-size: 14px;">
                                    <span>박서우</span>
                                        <br>                                    
                                    <span>khasdo1200</span>
                                    <span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                    <span>2011/05/21</span>
                                    </div>

                                </div>
                                <div id="newperson-main" style="height: 50px;">
                                    <div id="dash-main-img" style="display: inline-block;">
                                        <img src="img/person.png" alt="" style="width: 30px; height: 30px; margin-bottom: 20px;">
                                    </div>
                                    <div id="dash-main-info" style="display: inline-block; font-size: 14px;">
                                    <span>김민진</span>
                                        <br>                                    
                                    <span>khasasdf131</span>
                                    <span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                    <span>2011/05/21</span>
                                    </div>

                                </div>
                                <div id="newperson-main" style="height: 50px;">
                                    <div id="dash-main-img" style="display: inline-block;">
                                        <img src="img/person.png" alt="" style="width: 30px; height: 30px; margin-bottom: 20px;">
                                    </div>
                                    <div id="dash-main-info" style="display: inline-block; font-size: 14px;">
                                    <span>제윤지</span>
                                        <br>                                    
                                    <span>kh231200</span>
                                    <span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                    <span>2011/05/21</span>
                                    </div>

                                </div>
                               

                            </div>
                        </div>
                        
                </div>
			
		
	</div>
	</div>
	<script src="/js/jquery.min.js"></script>

    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
    <script src="/js/admin/adminmovie/js/accordion.js"></script>
    <script>
        let commentc = document.getElementById('commentc').getContext('2d');
        let comments = document.getElementById('comments').getContext('2d');

        let barChart = new Chart(commentc, {
            type : 'bar',
            data : {
                labels : ['가오갤', '아저씨','어바웃타임','명탐정코난','뽀로로'],
                datasets : [{
                    label : '리뷰 영화순위',
                    data : [
                        633,
                        1200,
                        1562,
                        3455,
                        7453
                    ],
                    backgroundColor:[
                        'red',
                        'blue',

                    ]
                }]
            }
        })

        let barChart2 = new Chart(comments, {
            type : 'bar',
            data : {
                labels : ['가오갤', '아저씨','어바웃타임','명탐정코난','뽀로로'],
                datasets : [{
                    label : '검색 영화순위',
                    data : [
                        32200,
                        50222,
                        60033,
                        70001,
                        90112
                    ],
                    backgroundColor:[
                        'red',
                        'blue',

                    ]
                }]
            }
        })
    </script>
</body>
</html>