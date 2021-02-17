<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <!--그리드시스템을 위한 css파일-->
        <link rel="stylesheet" href="css/bootstrap-grid.min.css">
        <!--reboot.css 는 태그속성들이 다른 브라우저에서 호환이 가능하게끔 스타일을 맞춰주는 css파일 -->
        <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
        <!--부트스트랩 기능들의 css-->>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/login/find_password1.css" type="text/css">
        <link rel="stylesheet" href="css/login/index.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/logo_favicon.ico">
        <!--favicon-->
        <link rel="icon" href="img/logo_favicon.ico">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <!--icon-->
        <title>EUTCHAPEDIA</title>
    </head>

<body>
    <div class="wrap">
        <header>
            <div class="wrapper">
                <div class="navbar">
                    <div class="navbar_logo">
                        <a href="main.html"><img id="logo" src="img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
                    </div> </a>

                    <div class="menu">
                        <ul>
                            <li><a href="about_us.html">ABOUT US</a></li>
                            <li><a href="#">평가하기</a></li>
                            <li><a href="#">고객센터</a></li>
                        </ul>
                    </div>

                    <!--검색창-->
                    <div class="searchbar">
                        <form action="#" autocomplete="on">
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
        
    <main class="main-body">
        <div class="find-password-main">
            <div class="first-title">
                <p class="x" onclick="location.href='#'">X</p>
                <h2 class="password-reset">비밀번호 재설정</h2>
            </div>
            <hr class="bottom-line">
            <div class="second-title">
                <div class="password-eamil">
                    <h2 class="password-forget">비밀번호를 잊으셨나요?</h2>
                    <p class="write-email">가입했던 이메일을 적어주세요.</p>
                    <p class="write-email">입력하신 주소로 비밀번호 변경 메일을 보낼게요</p>
                </div>
            </div>
            <div class="find-password-form">
                <form method="POST" action="#">
                    <p>
                        <input class="input-email" type="email" name="email" id="email" placeholder="이메일" />
                    </p>
                    <p>
                        <input class="find-password-button" type="submit" value="비밀번호 인증 이메일 보내기" />
                    </p>
                </form>
            </div>
        </div>
    </main>
    
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
                        고객센터<span> | </span>cs@eutchapedia.com, 02-123-4567 <br />
                        제휴 및 대외 협력<span> | </span>contact@eutcha.com</p>
                    <p>
                        주식회사 읏챠<span> | </span>대표 이지현<span> | </span>서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F,20F<br />
                        사업자 등록 번호 211-12-34567<br />
                        © 2021 by EUTCHA, Inc. All rights reserved.
                    </p>
                </div>
            </div>

        </footer>
    <!--부트스트랩이 jquery를 사용하고있어 어떠한 js파일보다 상위에 있어야함-->
    <script src="js/jquery.min.js"></script>
    <!--부트스트랩 4버전부터 popper.js가필요함 bundle.min.js에 popper.js가 포함되어있음-->
    <script src="js/bootstrap.bundle.min.js"></script>
</body>


</html>