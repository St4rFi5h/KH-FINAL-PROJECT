        var dt = new Date();
        
        var m = dt.getMonth() + 1;
        if (m < 10) {
            var month = "0" + m;
        } else {
            var month = m + "";
        }
    
        var d = dt.getDate() - 1;
        if (d < 10) {
            var day = "0" + d;
        } else {
            var day = d + "";
        }
    
        var y = dt.getFullYear();
        var year = y + "";
    
        var result = year + month + day;




var key = '79497ecabb6e26ac7267da5539baa52f';
		//var targetDt = '20210101';
		var itemPerPage = 10;
		$.ajax({
			url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=' + key
					+ '&targetDt=' + result
					+ '&itemPerPage=' + itemPerPage,
			type : 'get',
			success : function(data) {
				$('#info')
				//	.append($('<div>').text(data.boxOfficeResult.boxofficeType))
					//.append($('<div>').text(data.boxOfficeResult.showRange));
				$.fn.show(data.boxOfficeResult.dailyBoxOfficeList);
				}
			});
	
		$.fn.show = function(data) {
			$.each(data, function (index, value) {
				$('#info').append(value.rank);
				$('#info').append(value.movieNm);
				$('#info').append(value.rankOldAndNew);
			})
		}
		
		
		
/*			 <div class="movie_box" id="test">               
     	       <a href="#">
                <div class="poster">
                  <img
                    src="https://an2-img.amz.wtchn.net/image/v2/758b715a1c9e777f0f6d318f5903fc4d.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpFeE5UVTRNekl3TnpZME1qVTFOak0ySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5Lk1uVFdmVEpJTWNraDVxZE5mXzBYLVlVaFZEYzNuclctR2FKNExNakRPUms"
                    alt="" class="movie_img">
                  <div class="rank">6</div>
                  <div class="movie_info">
                    <h4 class="movie_title">아이</h4>
                    <p><div class="movie_yearNnation">2020<span>·</span>한국</div> </p>
                    <p><div class="movie_average">평균<span>★</span>3.4</div> </p>
                    <p><div class="movie_total">예매율 4.1%<span>·</span>누적 관객 2만명</div></p>
                  </div>
                </div>
              </a> */
                 