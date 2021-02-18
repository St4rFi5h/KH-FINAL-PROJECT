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
    <link rel="stylesheet" href="/css/mypage/mypage_withdraw.css"><!--css경로수정-->
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

     <!-- <div class='maintitle'> 
         <h1 class='bodytitle'>회원탈퇴</h1>
     </div> -->

    <div class='mybody-wrapper'>
        <div class='body-header'>
            <img id="logo" src="/img/original.png">
            <p></p>
            <div>
                <p class='ment'>회원님 ! 다시 한 번 생각해 보세요
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-emoji-frown" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                    <path d="M4.285 12.433a.5.5 0 0 0 .683-.183A3.498 3.498 0 0 1 8 10.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.498 4.498 0 0 0 8 9.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
                </svg>
                </p>
                <div id='ment2'>
                지금 탈퇴하시면 회원님이 작성하신 수많은 리뷰와 평가들이 사라지며 복구가 불가합니다.<br>
                어떤 점이 불편하셨는 지 선택해 주시면 반영하여 더 좋은 서비스를 제공하는 읏챠피디아가 되겠습니다. 
                </div>
                      
               
            </div>
        </div>

        <div class='body-main'>

            <form method="post" id='delForm' action="/mypage/withdraw.do">
            	<input type='hidden'  id='hiddenemail' name='memberEmail' value="abc@naver.com">
	              <div id='complainbox'>
	                <div id='complain-check'>
	                    <input id='check1' type="checkbox">
	                    <input type='hidden' name='reason1' id='reason1' value=0>
	                    <label id='reason'>&nbsp;영화정보가 부족함</label>
	                </div>
	                <div id='complain-check'>
	                    <input  id='check2' type="checkbox">
	                    <input type='hidden' name='reason2'  id='reason2' value=0>
	                    <label id='reason'>&nbsp;평가 및 리뷰정보가 도움이 되지 않음</label>
	                </div >
	                <div id='complain-check'>
	                    <input id='check3' type="checkbox">
	                    <input type='hidden' name='reason3'  id='reason3' value=0>
	                    <label id='reason'>&nbsp;홈페이지 기능이 별로 없음</label>
	                </div>
	                <div id='complain-check'>
	                    <input  id='check4' type="checkbox">
						<input type='hidden' name='reason4'  id='reason4' value=0>
	                    <label id='reason'>&nbsp;다른 서비스를 이용하고 있음</label>
	                </div>
	
				
	            </div>
	                <div>
	                    <p><label>비밀번호입력</label></p>
	                    <input id='inputdiv' type='password' value="1234" name='memberPwd'  placeholder="비밀번호입력">
	                </div>
	
	                <div>
	                    <input id='inputdiv2' type='submit' value='탈퇴' >
	                </div>
            </form>
            

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

 	<script>
            var reason1 = $('input#reason1').val();
			var reason2 = $('input#reason2').val();
			var reason3 = $('input#reason3').val();
			var reason4 = $('input#reason4').val();

			
			if($('#check1').is(":checked") ) {
				reason1 =1;
			}
			if($('#check2').is(":checked") ) {
				reason2 =1;
			}
			if($('#check3').is(":checked") ) {
				reason3 =1;
			}
			if($('#check4').is(":checked") ) {
				reason4 =1;
			}

			
			$(document).ready(function(){

				var memberPwd = $("#inputdiv").val();
				var memberEmail = $("#hiddenemail").val();
					
				console.log(memberEmail);
				
			$("#inputdiv2").on("click", function(){
				if($("#inputdiv").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#inputdiv").focus();
					return false;
				}
				$.ajax({
					async:false,
					url : "/mypage/passChk",
					type : "POST",
					data : {memberPwd : memberPwd, memberEmail : memberEmail  },
					success: function(result){
						
						if(result==1){
							if(confirm("정말로 탈퇴 하시겠습니까?")){
								$("#delForm").submit();
							}
						}else{
							alert("패스워드가 일치하지 않습니다.");
							return;
							
						}
					}
				})
				
			});
			
				
			
		});
	</script>
   
  </body>
    
</html>