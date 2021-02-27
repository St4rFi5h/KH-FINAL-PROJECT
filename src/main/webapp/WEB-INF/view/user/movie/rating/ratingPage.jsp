<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/movie/index.css" type="text/css" />
<link rel="shortcut icon" href="/img/logo_favicon.ico">
<!--favicon-->
<link rel="icon" href="/img/logo_favicon.ico">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!--icon-->

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/bootstrap-grid.min.css">
<link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="/css/movie/giveStar.css">
<script src="/js/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
	integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
	integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
	crossorigin="anonymous"></script>


<title>평가하기</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/user/header.jsp" />
	<div id="allcontents">
		<div id="top_wrap">
			<h1 id="howMany">5</h1>

			<h1 id="count_comment">와우 이만큼 평가하셨어요</h1>

			<select class="custom-select" id="select-search">
				<option selected>장르</option>
				<option ${(param.f == "action")?"selected":""} value="action">액션</option>
				<option ${(param.f == "romance")?"selected":""} value="romance">로멘스</option>
				<option ${(param.f == "thriller")?"selected":""} value="thriller">스릴러</option>
				<option ${(param.f == "sf")?"selected":""} value="sf">SF</option>
				<option ${(param.f == "adventure")?"selected":""} value="adventure">어드벤처</option>
				<option ${(param.f == "drama")?"selected":""} value="drama">드라마</option>
				<option ${(param.f == "family")?"selected":""} value="family">가족</option>
				<option ${(param.f == "animation")?"selected":""} value="animation">애니메이션</option>
				<option ${(param.f == "comedy")?"selected":""} value="comedy">코미디</option>


			</select>
		</div>
		
		<c:forEach var="m" items="${movies}" varStatus="vs" end="10">
			<div id="mid_wrap">
				<ul class="movie">
					<li class="eachMovie">

						<div class="movie_poster">
							<div class="movie_wrap">
								<img class="movie_image" src="${m.poster_uri}">
							</div>
						</div>

						<div class="movie_name">
							<h3 class="movie_title">
								${m.title}
								<div class="modal_button">
									<button class="fas fa-ellipsis-v" id="modal_btn"
										data-toggle="modal" data-target="#exampleModal${vs.index}"></button>
								</div>
							</h3>
							<div class="movie_info">${m.prodyear}-${m.nation}</div>
							<div id="star-rating-zone">
								<div class="starRev">
									<span class="star starR1">0.5</span> <span class="star starR2">1</span>
									<span class="star starR1">1.5</span> <span class="star starR2">2</span>
									<span class="star starR1">2.5</span> <span class="star starR2">3</span>
									<span class="star starR1">3.5</span> <span class="star starR2">4</span>
									<span class="star starR1">4.5</span> <span class="star starR2">5</span>
								</div>

							</div>
						</div>
					</li>
				</ul>
			</div>



			<!--  <div class="movielist">
            <h1>Page 1</h1>
        </div>
        <div class="movielist">
            <h1>Page 2</h1>
        </div>
        -->

			<div class="modal fade" id="exampleModal${vs.index}" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"></h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							<div class="movie_content">
								<div class="movie_poster">

									<div class="movie_wrap">

										<img class="movie_image" src="${m.poster_uri}">

									</div>
								</div>
								<div class=" css-1sondvb-ContentInfo e1pa47va1 ">
									<div class="movie_name">

										<h3 class="movie_title">
											${m.title}

											<div class="modal_button"></div>
										</h3>
										<div class="movie_info">${m.prodyear}-${m.nation}</div>
									</div>
								</div>
							</div>
							<div class="css-1k6r5nr-RowActionButtons e1pa47va5">
								<div aria-label="wished" role="button"
									class="css-1s4ktoa-RowActionButton-WishButton e1pa47va7">
									<img src="/img/movie/bookmark.svg" alt="wished"><span>보고싶어요</span>
								</div>
								<div aria-label="watching" role="button"
									class="css-9gb35z-RowActionButton-WatchingButton e1pa47va8">
									<img src="/img/movie/cloud.svg" alt="wished"><span>코멘트
										작성하기</span>
								</div>
							</div>



							<div class="modal-footer">
								<div aria-label="cancel" role="button"
									class="css-4w0dnp-ColumnActionButton-CancelButton e1pa47va11"
									data-dismiss="modal">취소</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</c:forEach>
	</div>

	<script src="/js/movie/star.js"></script>
	<script src="/js/movie/scroll.js"></script>
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>

</body>
</html>