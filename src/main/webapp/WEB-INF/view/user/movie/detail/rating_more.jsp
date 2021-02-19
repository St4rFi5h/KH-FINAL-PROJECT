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
            <button id="back-button" onclick="javascript:history.back();'">←</button>
        </div>
        
        <div class="title">코멘트</div>
        <div class="title" id="rating-title">관람객 평점 <span style="font-weight: bold;">2,345</span>건</div>
        <div class="dropdown" id="sort-dropdown">
            <select>
                <option value="">정렬 기준 선택</option>
                <option value="좋아요 많은 순">좋아요 많은 순</option>
                <option value="최신순">최신순</option>
                <option value="평점 높은 순">평점 높은 순</option>
                <option value="평점 낮은 순">평점 낮은 순</option>
            </select>
        </div>
        <div class="rating-zone">
            <div class="comment-card">
                <div class="profile-and-rating">
                    <div class="profile">
                        <img src="/img/movie/profile.svg" alt="">
                        <span class="nickname">지니어스현</span>
                    </div>
                    <div class="rating">
                        ★
                        <span>5.0</span>
                    </div>
                </div>
                <div class="comment-and-date">
                    <div class="comment">
                        <p>최고의 영화</p>
                        <p>읏챠피디아를 뒤집어 놓으셨다</p>
                    </div>
                    <div class="date">
                        2021.02.02 22:41
                    </div>

                </div>
                <div class="like">
                    <img src="/img/movie/like.svg" alt="">
                    <span>123</span>
                </div>

                <div class="like-and-report">
                	<span><button data-toggle="modal" id="like-button"
                            data-target="#like-modal">좋아요</button></span>
                    <span><button data-toggle="modal" id="report-button"
                            data-target="#report-modal">신고하기</button></span>
                </div>
            </div>
            <div class="comment-card">
                <div class="profile-and-rating">
                    <div class="profile">
                        <img src="/img/movie/profile.svg" alt="">
                        <span class="nickname">지니어스현</span>
                    </div>
                    <div class="rating">
                        ★
                        <span>5.0</span>
                    </div>
                </div>
                <div class="comment-and-date">
                    <div class="comment">
                        <p>최고의 영화</p>
                        <p>읏챠피디아를 뒤집어 놓으셨다</p>
                    </div>
                    <div class="date">
                        2021.02.02 22:41
                    </div>
                </div>
                <div class="like">
                    <img src="/img/movie/like.svg" alt="">
                    <span>123</span>
                </div>
                <div class="like-and-report">
                    <span><button data-toggle="modal" id="like-button" data-target="#like-modal">좋아요</button></span>
                    <span><button data-toggle="modal" id="report-button"
                            data-target="#report-modal">신고하기</button></span>
                </div>
            </div>
            <div class="comment-card">
                <div class="profile-and-rating">
                    <div class="profile">
                        <img src="/img/movie/profile.svg" alt="">
                        <span class="nickname">지니어스현</span>
                    </div>
                    <div class="rating">
                        ★
                        <span>5.0</span>
                    </div>
                </div>
                <div class="comment-and-date">
                    <div class="comment">
                        <p>최고의 영화</p>
                        <p>읏챠피디아를 뒤집어 놓으셨다</p>
                    </div>
                    <div class="date">
                        2021.02.02 22:41
                    </div>

                </div>
                <div class="like">
                    <img src="/img/movie/like.svg" alt="">
                    <span>123</span>
                </div>

                <div class="like-and-report">
                    <span><button data-toggle="modal" id="like-button" data-target="#like-modal">좋아요</button></span>
                    <span><button data-toggle="modal" id="report-button"
                            data-target="#report-modal">신고하기</button></span>
                </div>


                <!-- like Modal -->
                <div class="modal fade" id="like-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header" id="modal-title-wrapper">
                                <h5 class="modal-title" id="exampleModalLabel"></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div id="modal-contents">
                                    <img src="/img/movie/thumb.svg">
                                    <p>로그인이 필요한 기능이에요.</p>
                                    <p>회원가입 혹은 로그인 후 이용해주세요.</p>
                                </div>
                            </div>
                            <div class="modal-footer" id="footer-buttons">
                                <div class="footer-button-wrapper">
                                    <button type="button" class="btn btn-secondary" id="button-for-signup">회원가입</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" id="button-for-signin">로그인</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- siren Modal -->
                <div class="modal fade" id="report-modal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header" id="modal-title-wrapper">
                                <h5 class="modal-title" id="exampleModalLabel"></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div id="modal-contents">
                                    <img src="/img/movie/siren.png">
                                    <p>로그인이 필요한 기능이에요.</p>
                                    <p>회원가입 혹은 로그인 후 이용해주세요.</p>
                                </div>
                            </div>
                            <div class="modal-footer" id="footer-buttons">
                                <div class="footer-button-wrapper">
                                    <button type="button" class="btn btn-secondary" id="button-for-signup">회원가입</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" id="button-for-signin">로그인</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- paging -->
        <div class="paging-zone">
            <span><button><</button></span>
            <span><button>1</button></span>
            <span><button>2</button></span>
            <span><button>3</button></span>
            <span><button>4</button></span>
            <span><button>5</button></span>
            <span><button>></button></span>

        </div>
        
    </div>
	<!-- footer 시작 -->
	<jsp:include page="/WEB-INF/view/user/footer.jsp"/>
	<!-- footer 끝 -->


        <!-- scripts -->
        <script src="/js/bootstrap.bundle.min.js"></script>
        
</body>

</html>
