<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EUTCHAPEDIA</title>
<link rel="stylesheet" href="/css/movie/index.css">
<link rel="stylesheet" href="/css/main/index_main.css">
	<!--favicon-->
	<link rel="icon" href="/img/logo_favicon.ico">
	<link rel="shortcut icon" href="/img/logo_favicon.ico">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"><!--icon-->
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- xeicon -->
 	<script src="/js/jquery.min.js"></script>
 	<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> <!-- slick js-->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" /><!-- slick css -->
	<link rel="stylesheet" href="/css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- header 끝 -->

  <div class="section">
    <main>
	
      <section id="movie" style="margin: auto; display: inline-block;">

        <!--박스오피스 슬라이드 -->
        <div class="main_slider">
          <h1 class="slider_title">박스오피스</h1>
          <div class="movie_slider" id="box_office">
            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img src="https://an2-img.amz.wtchn.net/image/v2/612c4dc5b5b7b0df57bcf7aa02402dd2.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpBNU9UZzFNakE1TURjeU56VTFNVEkzSWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5Lmp3NllkRWtRTkE1UFBRTWdRMFRPOGRRRDMwcE1xLVY2RnBNbTY2UWNaWWs" alt="" class="movie_img">
                  <div class="rank">1</div>
                  <div class="movie_info">
                    <h4 class="movie_title">소울</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.2</div>
                    </p>
                    <div class="movie_total">예매율 25%<span>·</span>누적 관객 113만명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/c630199272ddb9a3fdee668009d04582.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE9UQTJOakkxTWpFek1UVXdOemt4SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LnM2OEU4Yk1GVm1vR3pIMU5BaThuSno5cnQxeHVkWjNiaE1kdV9mbVE1bjg"
                    alt="" class="movie_img">
                  <div class="rank">2</div>
                  <div class="movie_info">
                    <h4 class="movie_title">극장판 귀멸의 칼날 무한열차편</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.2</div>
                    </p>
                    <div class="movie_total">예매율 21%<span>·</span>누적 관객 39만명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/b4b406e42af330ba2e5cbd3b8a934020.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeU9USXlNekUyTURjeE56UXhNell5SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LnQ4M1owa3pIR0ZhdGJGTGc0REtfTVJqTE9hNFVKZ1NrZjgwbTlia3BjN28"
                    alt="" class="movie_img">
                  <div class="rank">3</div>
                  <div class="movie_info">
                    <h4 class="movie_title">해리포터와 불의 잔</h4>
                    <p>
                    <div class="movie_yearNnation">2005<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                    <div class="movie_total">예매율 10%<span>·</span>누적 관객 345만명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/01d44d62013f186a9062cc32a1aa93d7.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE9EQXdPVGs0TmprME1qQXdPVFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjM1Vy1qZmk3UmhYTG41TzBkeDUzSTlSVzlsblE3MHdXS1N5amVXZktLbm8"
                    alt="" class="movie_img">
                  <div class="rank">4</div>
                  <div class="movie_info">
                    <h4 class="movie_title">새해전야</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.6</div>
                    </p>
                    <div class="movie_total">예매율 9.1%<span>·</span>누적 관객 7만명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/0e1500ec349833f0484e9875e94fc60c.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFd05UZzBNVFk0TXpNeU1qQTJNRFE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkFDcm1kTmlKVXpNaGhOa2g5LUpOQWNlWWc3dFFMemZ6eTNlVGIzWmpabzA"
                    alt="" class="movie_img">
                  <div class="rank">5</div>
                  <div class="movie_info">
                    <h4 class="movie_title">명탐정 코난: 진홍의 수학여행</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.0</div>
                    </p>
                    <div class="movie_total">예매율 6%<span>·</span>누적 관객 5만명</div>
                  </div>
                </div>
              </a>
            </div>

            <!-- 추가 -->
            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/758b715a1c9e777f0f6d318f5903fc4d.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE5UVTRNekl3TnpZME1qVTFOak0ySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5Lk1uVFdmVEpJTWNraDVxZE5mXzBYLVlVaFZEYzNuclctR2FKNExNakRPUms"
                    alt="" class="movie_img">
                  <div class="rank">6</div>
                  <div class="movie_info">
                    <h4 class="movie_title">아이</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.4</div>
                    </p>
                    <div class="movie_total">예매율 4.1%<span>·</span>누적 관객 2만명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/f9a8d4378d48879659679fb50ef97af1.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeU56Y3hNalE0TWpJME1qSXpORFF4SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjZJOVNpbVhrbldHRFZtazV4ZWdMd1NxZEhhbGkwSHJUZy02aUpEX2tQNGc"
                    alt="" class="movie_img">
                  <div class="rank">7</div>
                  <div class="movie_info">
                    <h4 class="movie_title">뉴스 오브 더 월드</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.3</div>
                    </p>
                    <div class="movie_total">예매율 3%<span>·</span>누적 관객 1만명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/6b6b48fdf383198c8fc2eee29f135d5e.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFd05ERTFNVGcyT1RVek56WTFNemMzSWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LldqQUp5NXY0Snk1ZTBBbjFYMmFoRms1VENpeXVHdlZDa1dsd0R0bEdydW8"
                    alt="" class="movie_img">
                  <div class="rank">8</div>
                  <div class="movie_info">
                    <h4 class="movie_title">드림빌더</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>덴마크</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.4</div>
                    </p>
                    <div class="movie_total">예매율 2.2%<span>·</span>누적 관객 9,436명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/cfc17ab3a41866cb42de195f030701af.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeU9UTXpOVEl4TlRJeU56VTJPVEV3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkxuNkRyMjQtYlFkSGs3S01QemVJeS1uODdwTk9JMjIzRXp3TzFTMTNRa2c"
                    alt="" class="movie_img">
                  <div class="rank">9</div>
                  <div class="movie_info">
                    <h4 class="movie_title">퍼펙트 케어</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.5</div>
                    </p>
                    <div class="movie_total">예매율 2%<span>·</span>누적 관객 6,265명</div>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1585549176/sv2cue5mvz2vvgjkuupo.jpg"
                    alt="" class="movie_img">
                  <div class="rank">10</div>
                  <div class="movie_info">
                    <h4 class="movie_title">먼 훗날 우리</h4>
                    <p>
                    <div class="movie_yearNnation">2018<span>·</span>중국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                    <div class="movie_total">예매율 1%<span>·</span>누적 관객 5,674명</div>
                  </div>
                </div>
              </a>
            </div>

          </div>
        </div>

        <!--왓챠 영화 순위 슬라이드 -->
        <div class="main_slider">
          <h1 class="slider_title">왓챠 영화 순위</h1>
          <div class="movie_slider" id="watcha_slider">

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1540036404/zwkzpuxypnsrr5d5ebcv.jpg"
                    alt="" class="movie_img">
                  <div class="rank">1</div>
                  <div class="movie_info">
                    <h4 class="movie_title">해리포터와 마법사의 돌</h4>
                    <p>
                    <div class="movie_yearNnation">2001<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.3</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1549620830/u12z5sc75bq2cklu6ytm.jpg"
                    alt="" class="movie_img">
                  <div class="rank">2</div>
                  <div class="movie_info">
                    <h4 class="movie_title">해리포터와 비밀의 방</h4>
                    <p>
                    <div class="movie_yearNnation">2002<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.2</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1575260997/tlhbhw7fzmpfiqawooi9.jpg"
                    alt="" class="movie_img">
                  <div class="rank">3</div>
                  <div class="movie_info">
                    <h4 class="movie_title">백두산</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.4</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>


            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466068215/ancxjvkih7rkpcse9xi4.jpg"
                    alt="" class="movie_img">
                  <div class="rank">4</div>
                  <div class="movie_info">
                    <h4 class="movie_title">해리포터와 혼혈왕자</h4>
                    <p>
                    <div class="movie_yearNnation">2009<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.1</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466065477/rcfepo7df81n27hy2suy.jpg"
                    alt="" class="movie_img">
                  <div class="rank">5</div>
                  <div class="movie_info">
                    <h4 class="movie_title">해리포터와 아즈카반의 죄수</h4>
                    <p>
                    <div class="movie_yearNnation">2004<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.3</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <!-- 추가 -->
            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1605512451/ck9svslwdwkn1o4bf5pv.jpg"
                    alt="" class="movie_img">
                  <div class="rank">6</div>
                  <div class="movie_info">
                    <h4 class="movie_title">조제</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.7</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1519955226/vvnr4dqs6rxnxbc4mgvq.jpg"
                    alt="" class="movie_img">
                  <div class="rank">7</div>
                  <div class="movie_info">
                    <h4 class="movie_title">지금 만나러 갑니다</h4>
                    <p>
                    <div class="movie_yearNnation">2017<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.9</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1511292612/ritobaaal7nub51vhchp.jpg"
                    alt="" class="movie_img">
                  <div class="rank">8</div>
                  <div class="movie_info">
                    <h4 class="movie_title">이프온리</h4>
                    <p>
                    <div class="movie_yearNnation">2004<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>


            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/b89f051acb35c22408133f662fdd6537.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeU56VXdOekV5TmpNek9EVXlNVEV6SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LkpDNXZISFE3dEVNb0dPam8xa0tKUXplVFZPcl9mdGMxWEx2VmVtU2ZzQ00"
                    alt="" class="movie_img">
                  <div class="rank">9</div>
                  <div class="movie_info">
                    <h4 class="movie_title">미션 파서블</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.1</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1584332815/iztgzqnncfzizjujcqlq.jpg"
                    alt="" class="movie_img">
                  <div class="rank">10</div>
                  <div class="movie_info">
                    <h4 class="movie_title">주디</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.4</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

          </div>
        </div>

        <!--넷플릭스 영화 순위 슬라이드 -->
        <div class="main_slider">
          <h1 class="slider_title">넷플릭스 영화 순위</h1>
          <div class="movie_slider" id="netflix_slider">

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/12df6a89cf13443c181f2ea716b1f63e.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFd05qQTRPVGd5TXpjME9EYzVNalk1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LnFIeFZyYVh2Smh5aHpjdFZNd2xKTldhSzZqVU1qR3dOOWIzaUhLSFllNGs"
                    alt="" class="movie_img">
                  <div class="rank">1</div>
                  <div class="movie_info">
                    <h4 class="movie_title">승리호</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.1</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1602653039/kjdvdyucvpq6mb9kpxbj.jpg"
                    alt="" class="movie_img">
                  <div class="rank">2</div>
                  <div class="movie_info">
                    <h4 class="movie_title">삼진그룹 영어토익반</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.9</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1588552655/uibnepxhilqts4wgwpgx.jpg"
                    alt="" class="movie_img">
                  <div class="rank">3</div>
                  <div class="movie_info">
                    <h4 class="movie_title">헌트</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/143d833ee975bd43e6694b8263eddf4b.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE5UVTBNVEEzTnpjNE1EZzJOalF4SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LnpEM0FpLS14SGZyRGI2U3NBOVZ5ekRGeUxCVXdTVW5qdnlhTm12MWVCVkU"
                    alt="" class="movie_img">
                  <div class="rank">4</div>
                  <div class="movie_info">
                    <h4 class="movie_title">빌로우제로</h4>
                    <p>
                    <div class="movie_yearNnation">2021<span>·</span>스페인</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.7</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>


            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1585634628/hqqqrmqejgejsg3wqgdu.jpg"
                    alt="" class="movie_img">
                  <div class="rank">5</div>
                  <div class="movie_info">
                    <h4 class="movie_title">트롤</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <!-- 추가 -->

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1589763058/rkm96kgksw2jryfpje9u.jpg"
                    alt="" class="movie_img">
                  <div class="rank">6</div>
                  <div class="movie_info">
                    <h4 class="movie_title">날씨의 아이</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.2</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1494335756/ivj6rq72wxwzrp8wxd3u.jpg"
                    alt="" class="movie_img">
                  <div class="rank">7</div>
                  <div class="movie_info">
                    <h4 class="movie_title">겟 아웃</h4>
                    <p>
                    <div class="movie_yearNnation">2017<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.7</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1588552655/uibnepxhilqts4wgwpgx.jpg"
                    alt="" class="movie_img">
                  <div class="rank">8</div>
                  <div class="movie_info">
                    <h4 class="movie_title">헌트</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/143d833ee975bd43e6694b8263eddf4b.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE5UVTBNVEEzTnpjNE1EZzJOalF4SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LnpEM0FpLS14SGZyRGI2U3NBOVZ5ekRGeUxCVXdTVW5qdnlhTm12MWVCVkU"
                    alt="" class="movie_img">
                  <div class="rank">9</div>
                  <div class="movie_info">
                    <h4 class="movie_title">빌로우제로</h4>
                    <p>
                    <div class="movie_yearNnation">2021<span>·</span>스페인</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.7</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>


            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1503023644/q0mrixbkqdhu9fa6lvbu.jpg"
                    alt="" class="movie_img">
                  <div class="rank">10</div>
                  <div class="movie_info">
                    <h4 class="movie_title">청년경찰</h4>
                    <p>
                    <div class="movie_yearNnation">2017<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.8</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

          </div>
        </div>


        <!--슬라이드 (이번주 검색 TOP !) -->
        <div class="main_slider">
          <h1 class="slider_title">이번주 검색 TOP!</h1>
          <div class="movie_slider" id="search_slider">

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466062122/axkk3v81flbf0o1kz0co.jpg"
                    alt="" class="movie_img">
                  <div class="rank">1</div>
                  <div class="movie_info">
                    <h4 class="movie_title">귀를 기울이면</h4>
                    <p>
                    <div class="movie_yearNnation">1995<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.8</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466064258/x8yowmjhm0jnl2ukqans.jpg"
                    alt="" class="movie_img">
                  <div class="rank">2</div>
                  <div class="movie_info">
                    <h4 class="movie_title">하울의 움직이는 성</h4>
                    <p>
                    <div class="movie_yearNnation">2004<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.2</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1559555586/miwd1umtsyo1oivmebot.jpg"
                    alt="" class="movie_img">
                  <div class="rank">3</div>
                  <div class="movie_info">
                    <h4 class="movie_title">이웃집 토토로</h4>
                    <p>
                    <div class="movie_yearNnation">1988<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1559138313/xwqkbklmvpevyzafufbr.jpg"
                    alt="" class="movie_img">
                  <div class="rank">4</div>
                  <div class="movie_info">
                    <h4 class="movie_title">기생충</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.7</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1607183466/pcynw0x0uewpepasol7k.jpg"
                    alt="" class="movie_img">
                  <div class="rank">5</div>
                  <div class="movie_info">
                    <h4 class="movie_title">더 디그</h4>
                    <p>
                    <div class="movie_yearNnation">2021<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.3</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <!-- 추가 -->

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1606989380/ef94pwvtokrxfny6xz3a.jpg"
                    alt="" class="movie_img">
                  <div class="rank">6</div>
                  <div class="movie_info">
                    <h4 class="movie_title">꽃다발같은 사랑을 했다</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.2</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1587435957/byltsexidgn7rebayp7h.jpg"
                    alt="" class="movie_img">
                  <div class="rank">7</div>
                  <div class="movie_info">
                    <h4 class="movie_title">실</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>2.9</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1570899847/depz6qjrcakjnbpih8or.jpg"
                    alt="" class="movie_img">
                  <div class="rank">8</div>
                  <div class="movie_info">
                    <h4 class="movie_title">82년생 김지영</h4>
                    <p>
                    <div class="movie_yearNnation">2019<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.8</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1511551419/gx7kxjewsp6tn7d17lbd.jpg"
                    alt="" class="movie_img">
                  <div class="rank">9</div>
                  <div class="movie_info">
                    <h4 class="movie_title">미스테이러스 스킨</h4>
                    <p>
                    <div class="movie_yearNnation">2004<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.6</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1589766437/twkoxyi9dyhl0bvrxt71.jpg"
                    alt="" class="movie_img">
                  <div class="rank">10</div>
                  <div class="movie_info">
                    <h4 class="movie_title">미스비헤이비어</h4>
                    <p>
                    <div class="movie_yearNnation">2020<span>·</span>영국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.8</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

          </div>
        </div>


        <!--슬라이드 (이번주 리뷰 TOP !) -->
        <div class="main_slider">
          <h1 class="slider_title">이번주 리뷰 TOP!</h1>
          <div class="movie_slider" id="review_slider">

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/019eb913f9f7589b0bb2e57bdb5bb76f.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFd05ERTFPVFF3TVRZMk1ESXpNakUySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LnVtVUw5TmFTZ3JpamVBamF5NEpLU29ZMlVRZnBXU0Z1S2pRcno0SWtJMFU"
                    alt="" class="movie_img">
                  <div class="rank">1</div>
                  <div class="movie_info">
                    <h4 class="movie_title">비포 미드나잇</h4>
                    <p>
                    <div class="movie_year">2013<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.9</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466091327/s9thkbzfsjo5wylvqid7.jpg"
                    alt="" class="movie_img">
                  <div class="rank">2</div>
                  <div class="movie_info">
                    <h4 class="movie_title">미드나잇 인 파리</h4>
                    <p>
                    <div class="movie_year">2011<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.8</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1575596060/oketahpvj6milejraoif.jpg"
                    alt="" class="movie_img">
                  <div class="rank">3</div>
                  <div class="movie_info">
                    <h4 class="movie_title">나이보스 아웃</h4>
                    <p>
                    <div class="movie_year">2019<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1591666357/icvpyutx9etvcgaeooko.jpg"
                    alt="" class="movie_img">
                  <div class="rank">4</div>
                  <div class="movie_info">
                    <h4 class="movie_title">콜 미 바이 유어 네임</h4>
                    <p>
                    <div class="movie_year">2017<span>·</span>이탈리아</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1553140014/ez1vxznfdnaqplmoyrpy.jpg"
                    alt="" class="movie_img">
                  <div class="rank">5</div>
                  <div class="movie_info">
                    <h4 class="movie_title">그랜드 부다페스트 호텔</h4>
                    <p>
                    <div class="movie_year">2014<span>·</span>독일</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>


            <!-- 추가 -->

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1504852689/mbpzkjhecpuy2aauueb7.jpg"
                    alt="" class="movie_img">
                  <div class="rank">6</div>
                  <div class="movie_info">
                    <h4 class="movie_title">나는 내일, 어제의 너와 만난다</h4>
                    <p>
                    <div class="movie_year">2016<span>·</span>일본</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.9</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1580693070/tmybyccxiwkvsvj6ioan.jpg"
                    alt="" class="movie_img">
                  <div class="rank">7</div>
                  <div class="movie_info">
                    <h4 class="movie_title">작은 아씨들</h4>
                    <p>
                    <div class="movie_year">2019<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.0</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466062864/gdiffhahfnpsqn0sw7va.jpg"
                    alt="" class="movie_img">
                  <div class="rank">8</div>
                  <div class="movie_info">
                    <h4 class="movie_title">토이 스토리</h4>
                    <p>
                    <div class="movie_year">1995<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>4.1</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466062816/ykldf9sazup0otph9jzu.jpg"
                    alt="" class="movie_img">
                  <div class="rank">9</div>
                  <div class="movie_info">
                    <h4 class="movie_title">500일의 썸머</h4>
                    <p>
                    <div class="movie_year">2009<span>·</span>미국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.9</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466162784/bxdpnkpw0rjelo1p8ubo.jpg"
                    alt="" class="movie_img">
                  <div class="rank">10</div>
                  <div class="movie_info">
                    <h4 class="movie_title">곡성(哭聲)</h4>
                    <p>
                    <div class="movie_year">2015<span>·</span>한국</div>
                    </p>
                    <p>
                    <div class="movie_average">평균<span>★</span>3.8</div>
                    </p>
                  </div>
                </div>
              </a>
            </div>

          </div>
        </div>


        <!--슬라이드 (읏챠피디아 컬렉션) -->


        <div class="main_slider">

          <h1 class="slider_title">읏챠피디아 컬렉션</h1>
          <div class="movie_slider" id="collection_slider">

            <div class="movie_box">
              <a href="#">
                <ul class="photo_list">
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466065521/ncfalr8e5y9smnrpp1oe.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1480382093/ha1knjr9iilixtwkltpw.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1573532655/knwacv81c3ajrk8kyx8a.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1467962364/ygbypw4d3ejhavpea0uq.jpg">
                  </li>
                </ul>

                <h4 class="collection_title"> 개발자 지현 PICK! </h4>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <ul class="photo_list">
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466064258/x8yowmjhm0jnl2ukqans.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466062131/e4xg75gbbfa6rjwy0d7k.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1563771680/stqfo8sj3erjrplai4fq.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466061035/fwwrjqhqwfuhzkk2hn7p.jpg">
                  </li>
                </ul>

                <h4 class="collection_title"> 읏챠피디아 별점 TOP! </h4>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <ul class="photo_list">
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1467961113/i0gyod9uxmixi9bdziik.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1482381369/lzr9boofuml7ny1sczkx.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466069575/iqtwt0y5dejjkmwewtbk.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1492052122/fzjkzwtyleffkuxpph2s.jpg">
                  </li>
                </ul>

                <h4 class="collection_title"> 읏챠 엄선 컬렉션!</h4>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <ul class="photo_list">
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1591666357/icvpyutx9etvcgaeooko.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466142822/t2nqthx7l8mfmwssdoxj.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466069658/ctiknd85dpdqptbaxq3e.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v2/e9d3c056f8ac37eb2a3f7ccbf3c7d666.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE1qZ3dORGd6TnpJMU1ERTFOalkxSWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LmFOcHRib1Y2UHF4YnZlNHY5ckExTVRXMXJUS2cxTVd1THVrRnpBVWV5eTQ">
                  </li>
                </ul>

                <h4 class="collection_title"> 개발자 은규 PICK! </h4>
              </a>
            </div>

            <div class="movie_box">
              <a href="#">
                <ul class="photo_list">
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1564736653/ihvrpr0kvdza7lyiggst.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466062816/ykldf9sazup0otph9jzu.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1466064082/x6valqmosc71cpwmka0n.jpg">
                  </li>
                  <li class="photo_box">
                    <img class="photo-img"
                      src="https://an2-img.amz.wtchn.net/image/v2/396c4c0d402b0191a6bb3478f6b81d28.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeU16VTVNemcwT0RNd056SXlOamt4SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5LjBFNzcteDZseGpRZVJxYmZyV3ZfRDl1a1ZZeHF1dWlvWVFvNTlGZVJjdzQ">
                  </li>
                </ul>

                <h4 class="collection_title"> 개발자 종웅 PICK! </h4>
              </a>
            </div>

            <button class="slick-prev" aria-label="Previous" type="button"></button>
            <button class="slick-next" aria-label="Next" type="button"></button>

          </div>
        </div>

      </section>



    </main>
</div>

<!-- footer -->
<jsp:include page="footer.jsp"/>
<!-- footer 끝 -->



  <!-- scripts -->

  <script src="/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <script src="/js/main/movieslider.js"></script>
</body>
</html>