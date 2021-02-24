
(function(global, XHR){
	'use strict';
	var createXHR = (function() {
		XHR = XHR || ActiveXObject('Microsoft.XMLHTTP');
		return function() {
			return new XHR;
		};
	})();
	var xhr = createXHR();
	var result_view = document.querySelector('#box');
	//오늘 날짜
	var d = new Date();
	var yy = d.getFullYear();
	var mm = d.getMonth() + 1;
	var dd = d.getDate() - 1;
	var today = `${yy}${mm}${dd}`;
	xhr.open('GET', "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=79497ecabb6e26ac7267da5539baa52f&targetDt="+ today);
	xhr.send();
	xhr.onreadystatechange = function() {
		if ( this.status === 200 && this.readyState === 4 ) {
			console.log('통신 데이터 전송 성공! ^^');
			// console.log(this.response);
			// text file
			var getmovies = this.response;
			var template = '';
			// text -> object
			getmovies = JSON.parse(getmovies);
			// json파일내에 있는 속성 results
			var movies = getmovies.boxOfficeResult.dailyBoxOfficeList;
			// movies 반복 순환 처리
			for(var movie of movies) {
				template += [
					'<li class="movie-contents">',
						'<strong class="rank">'+'No.'+movie.rank+'</strong>',
						'<h3 class="name">'+movie.movieNm+'</h3>',
						'<p class="opendt small">'+'개봉일 : '+'<span>'+movie.openDt+'</span>'+'</p>',
						'<p class="audiacc small">'+'누적 관객 수 : '+'<span>'+movie.audiAcc+'</span>'+'명'+'</p>',
						'<p class="rankinten small">'+'순위 변화 : '+'<span class="rank-change">'+movie.rankInten+'</span>'+'</p>',
					'</li>'
				].join('');
			}
		} else {
			console.log('통신 데이터 전송 실패');
		}
		result_view.innerHTML = template;
		
		}
		})(this, this.XMLHttpRequest);