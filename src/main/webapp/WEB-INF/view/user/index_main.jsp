<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

                    <div>
                    <ul style="font-size: 20px;">
                        <li>순위</li>
                        <li>영화제목</li>
                        <li>누적관객수</li>
                        <li>누적매출액</li>
                        <li>개봉일</li>
                    </ul>
                    </div>
                    <div id="test">
                     <ul style="font-size: 20px;">
                        <li>1,001</li>
                        <li>Lorem</li>
                        <li>ipsum</li>
                        <li>dolor</li>
                        <li>sit</li>
                    </ul>
                    </div>
                </div>
                
         <!-- 추가 -->
<!--             <div class="movie_box">
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

    -->
          </div>
        </div>
		        <!--왓챠 영화 순위 슬라이드 -->
		        <div class="main_slider" id="watchaList">
		          <h1 class="slider_title">왓챠 영화 순위</h1>
		          <div class="movie_slider" id="watcha_slider">
			
			         <c:forEach items="${watchaList}" var="MovieInfoVo" begin="0" end="9" >
			         
			            <div class="movie_box">
						  <a href="/movie/detail?movieDocId=${MovieInfoVo.movieDocId}"><!-- detail페이지 연결해야함  -->
			              <div class="poster">
			                  <img src="${MovieInfoVo.posterUri}" alt="" class="movie_img">
			                  <div class="rank">${MovieInfoVo.movieRanking}</div>
			                  <div class="movie_info">
			                    <h4 class="movie_title">${MovieInfoVo.title}</h4>
			                    <p><div class="movie_yearNnation">
			                    <fmt:parseDate value='${MovieInfoVo.prodYear}' var='prodYear' pattern="yyyyMMdd" scope="page"/>
			                    <fmt:formatDate value="${prodYear}" pattern="yyyy"/>
			                    <span>·</span>${MovieInfoVo.nation}</div></p>
			                    <p><div class="movie_average">평균<span>★</span>${MovieInfoVo.ratingAvg}</div></p>
			                  </div>
			               </div>
			               </a>
			            </div>
			            
			         </c:forEach>
			            
				 </div>
				</div>
				
			
		        <!--넷플릭스 영화 순위 슬라이드 -->
		        <div class="main_slider">
		          <h1 class="slider_title">넷플릭스 영화 순위</h1>
		          <div class="movie_slider" id="netflix_slider">
		
				   <c:forEach items="${netflixList}" var="MovieInfoVo" begin="0" end="9" >
			     
			            <div class="movie_box">
					      <a href="/movie/detail?movieDocId=${MovieInfoVo.movieDocId}">
			                <div class="poster">
			                  <img src="${MovieInfoVo.posterUri}" alt="" class="movie_img">
			                  <div class="rank">${MovieInfoVo.movieRanking}</div> 
			                  <div class="movie_info">
			                    <h4 class="movie_title">${MovieInfoVo.title}</h4>
			                    <p><div class="movie_yearNation">
			                    <fmt:parseDate value='${MovieInfoVo.prodYear}' var='prodYear' pattern="yyyyMMdd" scope="page"/>
		                    	<fmt:formatDate value="${prodYear}" pattern="yyyy"/>
			                    <span>·</span>${MovieInfoVo.nation}</div></p>
			                    <p><div class="movie_average">평균<span>★</span>${MovieInfoVo.ratingAvg}</div></p>
			                  </div>
			                </div>
			              </a>
			            </div>
			            
			       </c:forEach>
			          
	          </div>
	        </div>

	
	        <!--슬라이드 (읏챠피디아 검색 TOP !) -->
	        <div class="main_slider">
	          <h1 class="slider_title">읏챠피디아 검색 TOP</h1>
	          <div class="movie_slider" id="search_slider">
	
	 		   <c:forEach items="${searchList}" var="MovieInfoVo" begin="0" end="9" >
	
	           	   <div class="movie_box">  
						<a href="/movie/detail?movieDocId=${MovieInfoVo.movieDocId}">
			                <div class="poster">
			                  <img src="${MovieInfoVo.posterUri}" alt="" class="movie_img"> 
	     					  <div class="rank">${MovieInfoVo.movieRankingIndex}</div> 
			                  <div class="movie_info">
			                    <h4 class="movie_title">${MovieInfoVo.title}</h4>
			                    <p><div class="movie_yearNation">
			                    <fmt:parseDate value='${MovieInfoVo.prodYear}' var='prodYear' pattern="yyyyMMdd" scope="page"/>
		                    	<fmt:formatDate value="${prodYear}" pattern="yyyy"/>
			                    <span>·</span>${MovieInfoVo.nation}</div></p>
			                    <p><div class="movie_average">평균<span>★</span>${MovieInfoVo.ratingAvg}</div></p>
			                  </div>
			                </div>
			              </a>
			           </div>
			           
			       </c:forEach>
		
		          </div>
		        </div>
	

		        <!--슬라이드 (읏챠피디아 리뷰 TOP !) -->
		        <div class="main_slider">
		          <h1 class="slider_title">읏챠피디아 리뷰 TOP</h1>
		          <div class="movie_slider" id="review_slider">
		
		    	  <c:forEach items="${reviewList}" var="MovieInfoVo" begin="0" end="9" >
		
		         	   <div class="movie_box">
							<a href="/movie/detail?movieDocId=${MovieInfoVo.movieDocId}">
			                <div class="poster">
			                  <img src="${MovieInfoVo.posterUri}" alt="" class="movie_img">
	     					  <div class="rank">${MovieInfoVo.movieRankingIndex}</div> 
			                  <div class="movie_info">
			                    <h4 class="movie_title">${MovieInfoVo.title}</h4>
			                    <p><div class="movie_yearNation">
			                    <fmt:parseDate value='${MovieInfoVo.prodYear}' var='prodYear' pattern="yyyyMMdd" scope="page"/>
		                    	<fmt:formatDate value="${prodYear}" pattern="yyyy"/>
			                    <span>·</span>${MovieInfoVo.nation}</div></p>
			                    <p><div class="movie_average">평균<span>★</span>${MovieInfoVo.ratingAvg}</div></p>
			                  </div>
			                  </div>
				             </a>
				          </div>
				            
				  </c:forEach>
				
		
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

<!--  <button onclick="txt()">영화 정보 요청</button>
    <div id="box"></div>


 -->

    </main>
</div>

<!-- footer -->
<jsp:include page="footer.jsp"/>
<!-- footer 끝 -->
<!--  <script>
        function txt(){
            // 클릭할때마다 안에 글자들만 꺼내온다.
            $.ajax({
                // 내가 튜닝한 url을 넣어준다.
                url : "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json?key=79497ecabb6e26ac7267da5539baa52f&targetDt=20210222",
                type : "GET",
                success : function(res){
                    alert('연결 성공');
                },
                error : function(){
                    alert("연결 실패");
                }
            })
        }
    </script>
 -->




  <!-- scripts -->

  <script src="/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <script src="/js/main/movieslider.js"></script>
  
  <script src="/js/main/boxoffice3.js"></script>
 <!-- <script src="/js/main/boxoffice.js"></script>  
    <script src="/js/main/boxoffice2.js"></script> 
  <script src="/js/main/boxoffice1.js"></script> --> 
</body>
</html>