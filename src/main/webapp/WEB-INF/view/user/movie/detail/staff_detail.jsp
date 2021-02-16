<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="/img/logo_favicon.ico">
    <link rel="stylesheet" href="/css/movie/index.css" type="text/css" />
    <link rel="stylesheet" href="/css/movie/staff_detail.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
    <!--icon-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
</head>

<body>
   <jsp:include page="/WEB-INF/view/user/inc/header.jsp"/>
    <div id="main-container">
        <div>
            <button id="back-button" onclick="location.href='movie_detail.html'">←</button>
        </div>
        <div id="staff-info-wrapper">
            <img src="/img/movie/profile.svg">
            <div id="staff-name-and-role">
                <h4>피트 닥터</h4>
                <div>감독</div>
            </div>
        </div>

        <div id="movie-info-wrapper">
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
        </div>
    </div> 

    <!-- 여기부터 footer-->
    <jsp:include page="/WEB-INF/view/user/inc/footer.jsp"/>

</body>

</html>