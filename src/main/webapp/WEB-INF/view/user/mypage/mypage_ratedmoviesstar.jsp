<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="/LMY/front-end/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/LMY/front-end/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/LMY/front-end/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/LMY/front-end/img/logo_favicon.ico"> <!--favicon-->
    <link rel="icon" href="/LMY/front-end/img/logo_favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"> <!--icon-->
    <link rel="stylesheet" href="/LMY/front-end/css/indexnew.css">
    <link rel="stylesheet" href="/LMY/front-end/css/ratedmovies.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <!-- 차트 링크 --> 
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 
    <title>EUTCHAPEDIA</title>
</head>

<body>
    
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                  <a href="#"><img id="logo" src="img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
               </div> </a>
    
                <div class="menu">
                  <ul>
                     <li><a href="#">ABOUT US</a></li>
                     <li><a href="#">평가하기</a></li>
                     <li><a href="#">고객센터</a></li>
                  </ul>
                </div>
    
                 <!--검색창-->
                 <div class="searchbar">
                  <form action="#">
                    <div class="search_box"> 
                       <div class="icon"><i class="fas fa-search"></i> 
                          <input type="text" value="" placeholder=" 작품 제목, 배우,감독을 검색해보세요.">
                            <button class="search_btn" type="submit"> <i class="fas fa-times"></i>
                         </button> 
                       </div>
                    </div>
                  </form>
              </div>
    
                <div class="menu">
                    <ul>
                      <li><a href="#">로그인</a></li>
                      <li><a href="#">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </div>
       </header>

      <div class='mybody-wrapper'>
        <div class='iconwrapper'>
            <a  href="/LMY/front-end/mypage.html">
                <img  data-bs-toggle="tooltip" data-bs-placement="top" title="마이페이지로 이동" src="/LMY/front-end/img/arrow-left-short.svg" alt="" width="40" height="40" >
            </a>
        </div>

        
            <div class="title">평가한 작품들</div> 
             <div class='option-wrapper'>
            <ul class="tabui">
                <li class="listyle2">전체</li>
                <li class="listyle">별점 순</li>
            </ul>
        </div>



      
        <!-- <div class="title">평가한 작품들</div> 
        <div class='option-wrapper'>
            <ul class="tabui">
                <li class="listyle2"><a href='/LMY/front-end/mypage_ratedmovies.html'>전체</li></a>
                <li class="listyle"><a href='/LMY/front-end/mypage_ratedmoviesstar.html'>별점 순</li></a>
            </ul>
        </div>
      -->
  
        <div class='dividestar'>
            <div class="title-sub">5.0점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터8.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
           
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터5.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
          
        </div>

        <div class='dividestar'>
            <div class="title-sub">4.0점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">3.5점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">3.0점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">2.5점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">2.0점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">1.5점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">1.0점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>

        <div class='dividestar'>
            <div class="title-sub">0.5점 준 영화</div> 
            <div class='moviewrapper'>
                <div class='movie-div'>
                    <a href="#"> 
                        <img class="poster" src="/LMY/front-end/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                    </a>
                    <li class="movietitle">기생충</li>
                    <!-- <li>2018 | 드라마</li> -->
                </div>
            </div>
        </div>
    
    </div>


   <!------------ footer ------------>

   <footer>

    <section class="count-space">
      <span class="count">지금까지<em> ★ 123,534,545 개의 평가가 </em> 쌓였어요.</span>
    </section>

    <div class="footer-right">
      <div class="social-icons">
        <span><a href="#"><i class="fab fa-instagram"></i></a></span> 
        <span><a href="#"><i class="fab fa-facebook-f"></i></a></span> 
        <span><a href="#"><i class="fab fa-twitter"></i></a></span> 
      </div>
    </div>

    <div class="footer-left">
      <div>
          <a href="#"> 서비스 이용약관</a>
          <a href="#"> 개인정보 처리방침</a>
          <a href="#"> 회사 안내</a>
      </div>

      <div>
        <p>
          고객센터<span> | </span>cs@eutchapedia.com, 02-123-4567 <br/>
          제휴 및 대외 협력<span> | </span>contact@eutcha.com</p>
        <p>
          주식회사 읏챠<span> | </span>대표 이지현<span> | </span>서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F,20F<br/>
          사업자 등록 번호 211-12-34567<br/>
          © 2021 by EUTCHA, Inc. All rights reserved.
        </p>
      </div>
    </div>

</footer>

    <!--부트스트랩이 jquery를 사용하고있어 어떠한 js파일보다 상위에 있어야함-->
    <script src="/LMY/front-end/js/jquery.min.js"></script>
    <!--부트스트랩 4버전부터 popper.js가필요함 bundle.min.js에 popper.js가 포함되어있음-->
    <script src="/LMY/front-end/js/bootstrap.bundle.min.js"></script>
    <script src="/LMY/front-end/js/mypage_chart.js"></script>
  </body>
    
</html>