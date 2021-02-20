<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eutchapedia</title>
    <link rel="shortcut icon" href="/img/logo_favicon.ico">
    <link rel="stylesheet" href="/css/movie/index.css" type="text/css" />
    <link rel="stylesheet" href="/css/movie/rating_more.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="/css/bootstrap-grid.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css" type="text/css" />
    <!--icon-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <script src="/js/jquery.min.js"></script>
</head>

<body>
<!-- header -->
 <jsp:include page="/WEB-INF/view/user/header.jsp"/>
<!-- header 끝 -->
    <div id="main-container">
        <div>
            <button id="back-button" onclick="location.href='/movie/detail?movieDocId=${movieDocId}'">←</button>
        </div>
        <form method="POST" name="comment_overview" id="comment_overview" action="/comment/overview?movieDocId=${movieDocId }">
        <input type="hidden" name="movieDocId" id="movieDocId" value="${movieDocId }"/>
        <div class="title">코멘트</div>
        <div class="title" id="rating-title">관람객 평점 <span style="font-weight: bold;">${commentCount }</span>건</div>
        <div class="dropdown" id="sort-dropdown">
            <select id="sort-dropdown-select" name="sortBy" onchange="selectOpt(this.options[this.selectedIndex.value])">
                <option value="">정렬 기준 선택</option>
                <option value="Likes">좋아요 많은 순</option>
                <option value="Latest">최신순</option>
                <option value="HighStars">평점 높은 순</option>
                <option value="LowStars">평점 낮은 순</option>
            </select>
        </div>
        <div class="rating-zone" id="rating-zone">
        <c:forEach var="commentList" items="${commentList }">
	            <div class="comment-card">
	                <div class="profile-and-rating">
	                    <div class="profile">
	                        <img src="${commentList.photo }" alt="">
	                        <span class="nickname">${commentList.nickname }</span>
	                    </div>
	                    <div class="rating">
	                        ★
	                        <span>${commentList.stars }</span>
	                    </div>
	                </div>
	                <div class="comment-and-date">
	                    <div class="comment">
	                        <p>${commentList.commentText }</p>
	                        
	                    </div>
	                    <div class="date">
	                        ${commentList.commentDate }
	                    </div>
	
	                </div>
	                <div class="like">
	                    <img src="/img/movie/like.svg" alt="">
	                    <span>${commentList.likeCount }</span>
	                </div>
	
	                <div class="like-and-report">
	                	<span><button data-toggle="modal" id="like-button"
	                            data-target="#like-modal">좋아요</button></span>
	                    <span><button data-toggle="modal" id="report-button"
	                            data-target="#report-modal">신고하기</button></span>
	                </div>
	            </div>
            </c:forEach>
            
            <!-- like Modal -->
                <div class="modal fade" id="like-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <jsp:include page="modal/like_modal_non_member.jsp"/>
                </div>

                <!-- siren Modal -->
                <div class="modal fade" id="report-modal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <jsp:include page="modal/report_modal_non_member.jsp"/>
                </div>
        </div>
	
        <!-- paging -->
        
	        <div class="paging-zone">
	        <input type="hidden" name="nowPage" id="nowPage" value="${empty param.nowPage ? 1 : param.nowPage }"/>
						<c:if test="${page.startPage > 1 }">
							<input type='button' value="처음" id="btnFirst" onclick="goPage(1)" />
							<input type="button" value="이전" id="btnPrev" onclick="goPage(${page.startPage - 1})"/>
						</c:if>
						
						
						<c:forEach var='i' begin='${page.startPage }' end='${page.endPage }'>
							<input type='button' value='${i }' ${(param.nowPage == i) ? 'disabled' : '' } onclick='goPage(${i})' />
						</c:forEach>
						
						<c:if test="${page.endPage < page.totalPage }">
							<input type='button' value='다음' id="btnNext" onclick="goPage(${page.endPage + 1})" />
							<input type="button" value="맨끝" id="btnLast" onclick="goPage(${page.totalPage})"/> 
						</c:if>
	
	        </div>
        </form>
        
    </div>
	<!-- footer 시작 -->
	<jsp:include page="/WEB-INF/view/user/footer.jsp"/>
	<!-- footer 끝 -->


        <!-- scripts -->
        <script src="/js/bootstrap.bundle.min.js"></script>
        <script>
    	function goPage(page) {
    		var frm = document.getElementById("comment_overview");
			var nowPage = document.getElementById('nowPage');
			var nowDropdown = document.getElementById('sort-dropdown-select');
			
			nowPage.value = page;
			console.log($(frm).serialize());
			frm.submit();
        }

        function selectOpt(option) {
        	var frm = document.getElementById("comment_overview");
            var dropDown = document.getElementById('sort-dropdown-select');

            var formData = {movieDocId: 'F52167', nowPage: 1, sortBy:'Likes'};
			
			console.log(formData);
			$.ajax({
				url : '/comment/AjaxControl',
				type : 'POST',
				dataType : "text",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(formData),
				success : function(data) {
					alert("hello!");
					console.log(data);

					},
				error: function() {
					alert("error");
				
					}

				});
			
        }
    	
        </script>
        
</body>

</html>
