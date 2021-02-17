<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="/css/mypage/mypage_edit(ver3).css"><!--css경로수정-->
    <link rel="stylesheet" href="/css/mypage/indexnew.css">
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
    
       
      <h3 class="main-title">
        
        <div class='title-div'>
            <a class='atag' href='/mypage/index'>마이페이지
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-bookmark-heart" viewBox="0 0 16 16">
             <path fill-rule="evenodd" d="M8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z"/>
             <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
           </svg>
        </a>
         </div>
        
     </h3>  
      <div class='mybody-wrapper'>
            <a  href="#">
                <!-- <img data-bs-toggle="tooltip" data-bs-placement="top" title="마이페이지로 이동" src="/img/arrow-left-short.svg" alt="" width="50" height="50" > -->
            </a>
            <div class='maintitle'> 
            <h1 class='bodytitle'>나의정보수정</h1>
            </div>
            <form class="formbox" name="#" method="post" action="#" onsubmit="#">

                <img class='profile' id='profile' src='/img/mypage/emoji.PNG' width="200px"; height="250px">
                

                <div class='inputbox-div'>
                    <label>닉네임
                    <span id="info">이미 존재하는 닉네임입니다.</span>
                    </label>
                    <input class='inputbox' type='text' placeholder="한글,영문,숫자 2자 이상 가능">
                </div>

                <div class='inputbox-div'>
                    <label>이메일</label>
                    <input class='inputbox' id=email type='email' value="abc@naver.com" readonly>
                
                </div>

                <div class='inputbox-div'>
                    <label for='profile'>프로필 사진 변경
                    <span id="info">사진 변경...</span>
                    </label>
                    
                    <input class='inputbox' id='fileinput' type='file' accept="image/*" onchange="previewImage(this)" / >
                </div>


                <div class='inputbox-div'>
                    <label>소개
                    <span id="info">..</span>
                    </label>
                    <textarea class='inputbox' placeholder="간단한 소개를 남겨보세요! "></textarea>
                </div>

                <div class='inputbox-div'>
                    <input class='inputbox' id='inputbox' type='submit' value='수정 완료'>
                </div>
                <p class='withdraw'>회원탈퇴를 원하시면 <a href="/mypage/withdraw">여기</a>를 클릭하세요</p>
            
         </form>
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


    <script>
     
     
        $(function() {
            $("#fileinput").on('change', function(){
                readURL(this);
            });
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
               var reader = new FileReader();
               reader.onload = function (e) {
                  $('#profile').attr('src', e.target.result);
               }
               reader.readAsDataURL(input.files[0]);
            }
        }
    

    </script>
  </body>
    
</html>