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
    <link rel="stylesheet" href="/css/movie/movie_detail_common.css" type="text/css" />
    <link rel="stylesheet" href="/css/movie/movie_detail_member.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css" type="text/css" />
     <!--icon-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <script src="/js/jquery.min.js"></script>
    <!-- slick js-->
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <!-- slick css -->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <!-- xeicon -->
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
<!-- header -->
 <jsp:include page="/WEB-INF/view/user/header.jsp"/>
<!-- header 끝 -->

    <div id="main-container">
        <div id="basic-info-and-rating">
            <div id="poster">
                <img alt="" src="img/220px-영화_소울.jpg" style="width: 160px; height: 240px" />
            </div>
            <div id="basic-info">
                <h1 id="title">소울</h1>
                <div id="year-genre-country">2020・애니메이션・미국</div>
                <div id="star-average">평균 ★4.2 (3만명)</div>
                <div id="watch-or-comment">
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" id="wanna-watch"
                        data-target="#wanna-watch-modal">보고싶어요</button>
                </div>

				<!-- if session.getAttribute("id") != null -->
				<!-- jstl 쓸 수 있는지 Test 완료 -->
                <!-- 보고싶어요/별점 및 코멘트 남기기 Modal -->
                <div class="modal fade" id="wanna-watch-modal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
					<jsp:include page="modal/wanna_watch_member.jsp"/>
                </div>

                <!-- 별점 및 코멘트 남기기 모달 -->
                <div class="modal fade" id="rating-and-comment-modal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <jsp:include page="modal/rating_and_comment_modal.jsp"/>
                </div>
				<!-- if 끝 -->


                <div id="star-rating">
                    <p id="star-message">평가하기</p>
                    <div class="starRev">
                        <span class="star starR1"></span>
                        <span class="star starR2"></span>
                        <span class="star starR1"></span>
                        <span class="star starR2"></span>
                        <span class="star starR1"></span>
                        <span class="star starR2"></span>
                        <span class="star starR1"></span>
                        <span class="star starR2"></span>
                        <span class="star starR1"></span>
                        <span class="star starR2"></span>
                    </div>
                </div>


            </div>
        </div>
        <div id="member-comment-zone">
            <div id="comment-zone-ment">멋진 평가네요. 이지현 님의 생각을 글로 남겨보세요.</div>
            <div><button id="write-comment-button" data-toggle="modal" data-target="#comment-modal"
                    data-dismiss="modal">코멘트 남기기</button></div>
        </div>

        <div id="after-comment-zone">
            <div id="my-comment-zone">어쩌구저쩌구</div>
            <div id="buttons-edit-delete">
                <div><button id="btn-edit" data-toggle="modal" data-target="#comment-edit-modal"
                        onclick="editComment()">수정하기</button></div>
                <div><button id="btn-delete" data-toggle="modal" data-target="#comment-delete-modal">삭제하기</button></div>
            </div>
        </div>

        <!-- 코멘트 남기기 모달 -->

        <div class="modal fade" id="comment-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <jsp:include page="modal/write_comment_modal.jsp"/>
        </div>

        <!-- 코멘트 수정하기 모달 -->

        <div class="modal fade" id="comment-edit-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
           <jsp:include page="modal/update_comment_modal.jsp"/>
        </div>

        <!-- 코멘트 삭제하기 모달 -->
        <div class="modal fade" id="comment-delete-modal" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <jsp:include page="modal/delete_comment_modal.jsp"/>
        </div>


		<!-- 공통 -->
        <div id="main-info-container">
            <div id="trailer-zone" class="detail-info">
                <div id="trailer-title">
                    <h4>예고편</h4>
                </div>
                <div id="video-zone">
                    <iframe width="900" height="550" src="https://www.youtube.com/embed/Q0zFPlArth0" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </div>
            </div>
            <div class="detail-info" id="movie-basic-info">
                <div>
                    <h4>기본 정보</h4>
                    <span class="more-info"><a href="movie_more_info.html">더보기</a></span>
                </div>
                <div>Soul</div>
                <div>2020・애니메이션・미국</div>
                <div>1시간 40분</div>
                <div id="plot">
                    <p>나는 어떻게 ‘나’로 태어나게 되었을까? 지구에 오기 전 영혼들이 머무는 ‘태어나기 전 세상’이 있다면?</p>
                    <p>뉴욕에서 음악 선생님으로 일하던 ‘조’는 꿈에 그리던 최고의 밴드와 재즈 클럽에서 연주하게 된 그 날, 예기치 못한 사고로 영혼이 되어 ‘태어나기 전 세상’에
                        떨어진다. 탄생
                        전 영혼들이 멘토와 함께 자신의 관심사를 발견하면 지구 통행증을 발급하는 ‘태어나기 전 세상’. ‘조’는 그 곳에서 유일하게 지구에 가고 싶어하지 않는 시니컬한 영혼
                        ‘22’의 멘토가 된다.
                    </p>
                    <p>링컨, 간디, 테레사 수녀도 멘토되길 포기한 영혼 ‘22’. 꿈의 무대에 서려면 ‘22’의 지구 통행증이 필요한 ‘조’. 그는 다시 지구로 돌아가 꿈의 무대에 설 수
                        있을까?</p>
                </div>
            </div>

            <div id="staffs">
                <div class="detail-info">
                    <h4 id="actor-and-pd">출연/제작</h4>
                    <div class="my-slider" id="staffs-slider">
                        <div class='slider-elements'>
                            <!-- a태그가 안먹힌다.. 어떻게 제어해야하지? -->
                            <a href="staff_detail.html">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">피트 닥터</div>
                                    <div class="staff-role">감독</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">켐프 파워스</div>
                                    <div class="staff-role">감독</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">제이미 폭스</div>
                                    <div class="staff-role">성우 | 조 가드너</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">티나 페이</div>
                                    <div class="staff-role">성우 | 22</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">그레이엄 노튼</div>
                                    <div class="staff-role">성우 | 문윈드</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">레이첼 하우스</div>
                                    <div class="staff-role">성우 | 테리</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">엘리스 브라가</div>
                                    <div class="staff-role">성우 | 제리</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">리처드 아이오아디</div>
                                    <div class="staff-role">성우 | 제리</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">도넬 로우링스</div>
                                    <div class="staff-role">성우 | 데즈</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">아미어-칼리브 톰슨</div>
                                    <div class="staff-role">성우 | 컬리</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">안젤라 바셋</div>
                                    <div class="staff-role">성우 | 도로시아</div>
                                </div>
                            </a>
                        </div>
                        <div class='slider-elements'>
                            <a href="">
                                <img src="img/profile.svg" class="profile-img">
                                <div class="name-and-role">
                                    <div class="staff-name">다비드 딕스</div>
                                    <div class="staff-role">성우 | 폴</div>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
                <div class="detail-info">
                    <h4>별점 그래프</h4>
                    <div id="chart-container">
                        <canvas id="myChart" style="width: 600px; height: 300px;"></canvas>
                    </div>
                </div>
                <div class="detail-info">
                    <h4>코멘트</h4>
                    <span class="more-info"><a href="rating_more_member.html">더보기</a></span>
                    <div id="comment-zone">
                        <div class="comment-card">
                            <div class="user-info-and-rating">
                                <img src="img/profile.svg" class="profile-img" />
                                <div class="user-nickname">지니어스현</div>
                                <div class="comment-star-rating">★ 5.0</div>
                            </div>
                            <div class="comment">
                                <!-- 데이터 받아올 때 하나의 p태그에 넣고 줄바꿈은 br 태그로 처리 -->
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                    deserunt mollit anim id est laborum.</p>
                            </div>
                            <div class="like-count-zone">
                                <img src="img/like.svg" id="like-thumb" />
                                <span id="like-count">123</span>
                            </div>
                            <div class="like-and-report">
                                <span><button id="like-button">좋아요</button></span>
                                <span><button data-toggle="modal" id="report-button"
                                        data-target="#report-modal">신고하기</button></span>
                            </div>
                        </div>
                        <div class="comment-card">
                            <div class="user-info-and-rating">
                                <img src="img/profile.svg" class="profile-img" />
                                <div class="user-nickname">김은규</div>
                                <div class="comment-star-rating">★ 4.5</div>
                            </div>
                            <div class="comment">
                                <p>인생영화 각</p>

                            </div>
                            <div class="like-count-zone">
                                <img src="img/like.svg" id="like-thumb" />
                                <span id="like-count">123</span>
                            </div>
                            <div class="like-and-report">
                                <span><button data-toggle="modal" id="like-button"
                                        data-target="#like-modal">좋아요</button></span>
                                <span><button data-toggle="modal" id="report-button"
                                        data-target="#report-modal">신고하기</button></span>
                            </div>
                        </div>

                        <div class="comment-card">
                            <div class="user-info-and-rating">
                                <img src="img/profile.svg" class="profile-img" />
                                <div class="user-nickname">박서우</div>
                                <div class="comment-star-rating">★ 5.0</div>
                            </div>
                            <div class="comment">
                                <p>읏챠피디아를 뒤집어 놓으셨다</p>
                                <p>최고의 영화</p>
                            </div>
                            <div class="like-count-zone">
                                <img src="img/like.svg" id="like-thumb" />
                                <span id="like-count">123</span>
                            </div>
                            <div class="like-and-report">
                                <span><button data-toggle="modal" id="like-button"
                                        data-target="#like-modal">좋아요</button></span>
                                <span><button data-toggle="modal" id="report-button"
                                        data-target="#report-modal">신고하기</button></span>
                            </div>
                        </div>

                        <!-- siren Modal(member) -->
                        <div class="modal fade" id="report-modal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
							<jsp:include page="modal/report_modal_member.jsp"/>
                        </div>
                    </div>

                    <!-- 신고 결과 모달 -->
                    <div class="modal fade" id="report-result-modal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <jsp:include page="modal/report_modal_complete.jsp"/>
                    </div>
                </div>
                <div class="detail-info" id="collection">
                    <h4>이 작품이 담긴 컬렉션</h4>
                    <div>
                        <div class="my-slider" id="collection-slider">
                            <a href="">
                                <div class="collection-zone">
                                    <div class="collection-card">컬렉션입니다</div>
                                    <div class="collection-title">읏챠피디아 엄선 컬렉션</div>
                                </div>
                            </a>
                            <a href="">
                                <div class="collection-zone">
                                    <div class="collection-card">컬렉션입니다</div>
                                    <div class="collection-title">디즈니&픽사 완전 정복</div>
                                </div>
                            </a>
                            <a href="">
                                <div class="collection-zone">
                                    <div class="collection-card">컬렉션입니다</div>
                                    <div class="collection-title">개발자 윤지 PICK!</div>
                                </div>
                            </a>
                            <a href="">
                                <div class="collection-zone">
                                    <div class="collection-card">컬렉션입니다</div>
                                    <div class="collection-title">개발자 은규 PICK!</div>
                                </div>
                            </a>
                            <a href="">
                                <div class="collection-zone">
                                    <div class="collection-card">컬렉션입니다</div>
                                    <div class="collection-title">개발자 지현 PICK!</div>
                                </div>
                            </a>
                            <a href="">
                                <div class="collection-zone">
                                    <div class="collection-card">컬렉션입니다</div>
                                    <div class="collection-title">개발자 종웅 PICK!</div>
                                </div>
                            </a>
                        </div>
                        </a>
                    </div>
                </div>


            </div>
        </div>
        <!-- 여기부터 footer-->

        <!------------ footer ------------>
		<jsp:include page="/WEB-INF/view/user/footer.jsp"/>
		<!-- footer 끝 -->



        <!-- scripts -->
        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
        <script src="/js/movie/mychart.js"></script>
        <script src="/js/movie/myslider.js"></script>
        <script src="/js/movie/movie_detail_member.js"></script>
</body>