<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/css/indexnew.css">
    <link rel="stylesheet" href="/css/iwant.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <!-- 차트 링크 --> 
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 
    <title>EUTCHAPEDIA</title>
</head>

<body>
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                  <a href="#"><img id="logo" src="/img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
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
            <a  href="#"><!--마이페이지이동  -->
                <img  data-bs-toggle="tooltip" data-bs-placement="top" title="마이페이지로 이동" src="/img/arrow-left-short.svg" alt="" width="40" height="40" >
            </a>
        </div>

        <div class='titlewrapper'>
            <p class="title">보고싶어요</p>
        </div>
        <div class='sortwrapper'>
            <a class="sortbtn" data-toggle="modal" href="#myModal" style="text-decoration:none; color:black">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                    <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
                  </svg>
            가나다순
            </a>
            <p></p>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable" >
                    
                    <!-- Modal content-->
                    <div class="modal-content" id="modal-div">
                        <div class="modal-header" id="modal-header" >
                            <h4 class="modal-title" id='modal-title'>보고싶어요
                                <button type="button" class="close" id="xbtn" data-dismiss="modal">×</button>
                            </h4>
                        </div>

                        <div class="modal-body">
                            <div>
                                <div id="sorttext"><a  href=# style="text-decoration:none; color:black" >가나다순</a></div>
                                <div id="sorttext"><a  href=# style="text-decoration:none; color:black">신작순</a></div>
                                <div id="sorttext"><a  href=# style="text-decoration:none; color:black">구작순</a></div>
                                <div id="sorttext"><a  href=# style="text-decoration:none; color:black">담은순</a></div>

                            </div>
                         
                        </div>

                        <!-- 
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div> 
                        -->

                    </div>
                    
                    </div>
                </div>


         
        </div>

        
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터2.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터3.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터4.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터5.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터6.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터7.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터8.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터9.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터10.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터11.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터12.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터13.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
            </div>
        </div>
        <div class='moviewrapper'>
            <div class='movie-div'>
                <a href="#"> 
                    <img class="poster" src="/img/포스터14.PNG" width="150px";  height="200px"; alt="포스터없음">
                </a>
                <li class="movietitle">기생충</li>
                <!-- <li>2018 | 드라마</li> -->
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
    <script src="/js/jquery.min.js"></script>
    <!--부트스트랩 4버전부터 popper.js가필요함 bundle.min.js에 popper.js가 포함되어있음-->
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/mypage_chart.js"></script>
  </body>
    
</html>