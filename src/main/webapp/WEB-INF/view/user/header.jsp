<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EUTCHAPEDIA</title>
	<link rel="stylesheet" href="/css/movie/index.css">
	<!--favicon-->
	<link rel="icon" href="/img/logo_favicon.ico">
	<link rel="shortcut icon" href="/img/logo_favicon.ico">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"><!--icon-->
	<link rel="stylesheet" href="/css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
 <header id="header">
 
<%
	if(session.getAttribute("id") == null) {
		
%>
 
      <div class="wrapper">
        <div class="navbar">
        
          <div class="navbar_logo">
            <a href="main"><img id="logo" src="/img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
          	</a></div>

          <div class="menu">
            <ul>
              <li><a href="aboutus">ABOUT US</a></li>
              <li><a href="ratingPage">평가하기</a></li>
              <li><a href="faq_list">고객센터</a></li>
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
     
     <% } else { %>
      
      <div class="wrapper">
        <div class="navbar">
        
          <div class="navbar_logo">
            <a href="main"><img id="logo" src="/img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
          	</a></div>

          <div class="menu">
            <ul>
              <li><a href="aboutus">ABOUT US</a></li>
              <li><a href="ratingPage">평가하기</a></li>
              <li><a href="faq_list">고객센터</a></li>
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
              <li><a href="logout">로그아웃</a></li>
              <li><a href="mypage"><i class="far fa-user" id="usermy"></i></a></li><!-- 마이페이지 -->
            </ul>
          </div>
          
        </div>
      </div>
      <%} %>
      
    </header>
</body>
</html>