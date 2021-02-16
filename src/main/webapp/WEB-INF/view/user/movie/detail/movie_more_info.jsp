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
    <link rel="stylesheet" href="/css/movie/movie_more_info.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
     <!--icon-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <script src="/js/jquery.min.js"></script>
</head>
<body>
<!-- header -->
 <jsp:include page="/WEB-INF/view/user/inc/header.jsp"/>
<!-- header 끝 -->
    <div id="main-container">
        <div>
            <button id="back-button" onclick="location.href='movie_detail.html'">←</button>
        </div>
        <div class="title">기본 정보</div>
        <div id="table-zone">
            <table>
                <tr>
                    <th>원제</th>
                    <td>Soul</td>
                </tr>
                <tr>
                    <th>제작 연도</th>
                    <td>2020</td>
                </tr>
                <tr>
                    <th>국가</th>
                    <td>미국</td>
                </tr>
                <tr>
                    <th>장르</th>
                    <td>애니메이션/모험/가족/SF/판타지/코미디</td>
                </tr>
                <tr>
                    <th>관람 등급</th>
                    <td>전체 관람가</td>
                </tr>
                <tr>
                    <th>상영 시간</th>
                    <td>1시간 40분</td>
                </tr>
                <tr>
                    <th class="plot-title">내용</th>
                    <td class="plot-title"></td>
                </tr>
            </table>
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
    </div>


<!-- footer 시작 -->
<jsp:include page="/WEB-INF/view/user/inc/footer.jsp"/>
<!-- footer 끝 -->

        <!-- scripts -->

        <script src="/js/movie/bootstrap.bundle.min.js"></script>
        
</body>

</html>