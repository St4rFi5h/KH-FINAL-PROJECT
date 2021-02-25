<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/img/logo_favicon.ico"> <!--favicon-->
    <link rel="icon" href="/img/logo_favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"> <!--icon-->
    <link rel="stylesheet" href="/css/mypage/mypagenew.css">
    <link rel="stylesheet" href="/css/mypage/indexnew.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <!-- 차트 링크 --> 
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 
    <title>EUTCHAPEDIA</title>
</head>

<body>
   <jsp:include page="/WEB-INF/view/user/header.jsp"/>
        
        
    <h3 class="main-title">
        <div class='title-div'>
         마이페이지
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-bookmark-heart" viewBox="0 0 16 16">
             <path fill-rule="evenodd" d="M8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z"/>
             <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
           </svg>
         </div>
     </h3>  
    <div class="mybody-wrapper">
        <div class="mybody">
            <div class="left">
                
                <div id='profileimg'>
                	<c:set var="name" value='/img/mypage/originprofile.jpg' />
            		<c:set var="name2" value='${member.memberPhoto}' />    
                    <c:choose>
            		<c:when test="${name == name2}"> 
                		<img  src='${member.memberPhoto}' width="200px"; height="250px">
                	</c:when>
                	<c:when test="${name != name2}">
               			 <img src='/static/upload/${member.memberPhoto}' width="200px"; height="250px">
                	</c:when>
				</c:choose>
                </div>
                <h4 id='nickname'>${member.memberNickname }</h4>

                <p class="info-title">───Introduce───</p>
                <div class="info">
                <p class="info-text">
                    ${member.memberIntroduce }
                </p>

                </div>

                <div class="sidebar">

                    <div class='sidebar-menu'>
                        <a href="#">코멘트 관리
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-chat-dots" viewBox="0 0 16 16">
                                <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                <path d="M2.165 15.803l.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z"/>
                            </svg>
                        </a>
                    </div>
                    <p></p>

                    <div  class='sidebar-menu'>
                        <a href="#">나의 문의
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg>
                        </a>
                    </div>

                    <p></p>

                    <div  class='sidebar-menu'>
                        <a href="/mypage/edit">정보 수정
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-check" viewBox="0 0 16 16">
                                <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                                <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                            </svg>
                        </a>
                    </div>

                </div>
            </div>
            
            <div class="center">
                <div class="center1">
                    <p></p>
                    <h4>영화</h4>
                    <span class='sub-title'>보고싶어요</span><span class='starcount'> ${wannacount } </span>
		                    <a href='/mypage/wannawatch'> <!-- 보고싶어요 링크 이동 -->
				            	<div class='center1-box'>
                    	<c:forEach var="n" items="${wannawatch}" begin="1" end="8">
				                	<div class='center-box-img'><img id='posterimg' src="${n.posterUri}" width="110px"; height="135px" alt="포스터없음"></div>
                    	</c:forEach> 
				                </div>
		                    </a>
                </div>

                <div class="center2">
                    <span class='sub-title'>평가한 작품</span><span class='starcount'> ${ratedStarNum } </span>
                    <a href='/mypage/ratedmovies'> <!-- 평가한작품 링크 이동 -->
		                    <div class='center2-box'>
                    	<c:forEach var="star" items="${star}" begin="1" end="8">
		                    	<div class='center-box-img'><img id='posterimg'src="${star.posterUri}" width="110px"; height="135px" alt="포스터없음"></div>
                    	</c:forEach> 
		                    </div>
                     </a>
                </div>
            </div>

            <div class="right">
                
                <div class="right1">
                    <p></p>
                    <h4>취향 분석</h4>
                    <h6>별점 분포</h6>
                    <p></p>
                    <div class='right1-box'>
                      <canvas id="myChart"></canvas> 
                    </div>
                    <div class="right1-box-text">
                      <p >${avg }<br>별점평균</p>
                      <p >${ratedStarNum }<br>별점개수</p>
                      <p >${mostRatedStar.star }<br>많이 준 별점</p>
                    </div>
                </div>
                <div class="right2">
                    <h6>선호 장르</h6>
                    <div class='right2-box'>
                      <canvas id="myChart2"></canvas>
                    </div>
                </div>
                <div class="right3">
                    <h6>영화 감상 시간</h6>
                    <div class='right3-box'>
                        <h4>${hour}시간 ${minute}분</h4>
                        <p>조금 더 평가를 매겨 보세요!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="/WEB-INF/view/user/footer.jsp"/>
    <!--부트스트랩이 jquery를 사용하고있어 어떠한 js파일보다 상위에 있어야함-->
    <script src="/js/jquery.min.js"></script>
    <!--부트스트랩 4버전부터 popper.js가필요함 bundle.min.js에 popper.js가 포함되어있음-->
    <script src="/js/bootstrap.bundle.min.js"></script>
<!--<script src="/js/mypage/mypage_chart.js"></script>--> 
    <script>
    var ctx4 =document.getElementById('myChart2');
    var ctx3 = document.getElementById('myChart');

    var ratedNum = [];	

    <c:forEach var="n" items="${graphMap}">
    	ratedNum.push('${n.starCount}');
    </c:forEach>
    
    //막대그래프
    var myChart = new Chart(ctx3, { 
        type: 'bar', 
        data: { labels: ['', '1', '', '2', '', '3','','4','','5'], 
                datasets: [{ label: '별점분포', data: ratedNum, 
                backgroundColor: [ 'rgba(255, 204, 000)', 
                                   'rgba(255, 204, 000)', 
                                   'rgba(255, 204, 000)', 
                                   'rgba(255, 204, 000)', 
                                   'rgba(255, 204, 000)', 
                                   'rgba(255, 204, 000)',
                                   'rgba(255, 204, 000)',
                                   'rgba(255, 204, 000)',
                                   'rgba(255, 204, 000)',
                                   'rgba(255, 204, 000)'
                                 ], 
                borderColor: [     'rgba(255, 204, 000)', 
    					           'rgba(255, 204, 000)', 
    					           'rgba(255, 204, 000)', 
    					           'rgba(255, 204, 000)', 
    					           'rgba(255, 204, 000)', 
    					           'rgba(255, 204, 000)',
    					           'rgba(255, 204, 000)',
    					           'rgba(255, 204, 000)',
    					           'rgba(255, 204, 000)',
    					           'rgba(255, 204, 000)'], 
                borderWidth: 1 
                }] 
              }, 
          options: { 
            maintainAspectRatio : false,
            legend : {display : false},
            scales: { 
              xAxes: [{
                gridLines: {
                display:false
                }
              }],
              yAxes: [{ 
                ticks: { 
                  beginAtZero: true,
                  stepSize : 5 },
                gridLines: {
                  display:false
                }
                   }] 
                  } 
                } 
              }
            ); 
    //도넛,파이 작성 2
    		var genre = [];
    		var num = [];

    	    <c:forEach var="n" items="${doughnutMap}">
    	    	genre.push('${n.genre}');
    	    </c:forEach>

    	    <c:forEach var="n" items="${doughnutMap}">
    	    	num.push('${n.count}');
    	    </c:forEach>
    	    
            var data = { 
              labels: genre, 
              datasets: [ { 
                data: num, 
                backgroundColor: [ 
                  "#f79546", "#9bba57", "#4f81bb", "#5f497a", "#a94069", "#ff5f34", "#41774e"], 
                borderWidth: 0, 
                label: "Dataset 1" 
              }] 
            }; 
            window.onload = function() { 
              var ctx8 = $('#myChart2').get(0).getContext("2d"); 
              window.theChart8 = new Chart(
                ctx8, { 
                  type: 'doughnut', 
                  data: data, 
                  options: { 
                    responsive: true, 
                    legend: false, 
                    maintainAspectRatio : false, 
                    animation: false, 
                    pieceLabel: { 
                      mode:"label", 
                      position:"border", 
                      fontSize: 11, 
                      fontStyle: 'bold' } 
                    } 
                  }
                )
            };

    </script>
  </body>
    
</html>