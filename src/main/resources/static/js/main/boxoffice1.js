
const movie_box = document.querySelector(".movie_box")


	//조회할 날짜를 계산
	var dt = new Date();
	//0(1월)부터 시작하기때문에 1더해주기
	var m = dt.getMonth() + 1;
	if (m < 10) { 
		var month = "0" + m;
	} else { 
		var month = m + ""; }
	//당일 박스오피스는 안나오기때문에 전날 박스오피를 가져오기위해 -1해줌
	var d = dt.getDate() - 1;
	if (d < 10) { 
		var day = "0" + d;
	} else { 
		var day = d + ""; }
	var y = dt.getFullYear();
	var year = y + "";
	var result = year + month + day;
	
	//천단위마다 콤마찍어주는 함수
	function addComma(num) {
		// 문자열 길이가 3과 같거나 작은 경우 입력 값을 그대로 리턴
		if (num.length <= 3) {
			return num;
		}
		// 3단어씩 자를 반복 횟수 구하기
		var count = Math.floor((num.length - 1) / 3);
		// 결과 값을 저정할 변수
		var result = "";
		// 문자 뒤쪽에서 3개를 자르며 콤마(,) 추가
		for (var i = 0; i < count; i++) {
			// 마지막 문자(length)위치 - 3 을 하여 마지막인덱스부터 세번째 문자열 인덱스값 구하기
			var length = num.length;
			var strCut = num.substr(length - 3, length);
			// 반복문을 통해 value 값은 뒤에서 부터 세자리씩 값이 리턴됨.
			// 입력값 뒷쪽에서 3개의 문자열을 잘라낸 나머지 값으로 입력값 갱신
			num = num.slice(0, length - 3);
			// 콤마(,) + 신규로 자른 문자열 + 기존 결과 값
			result = "," + strCut + result;
		}
		// 마지막으로 루프를 돌고 남아 있을 입력값(value)을 최종 결과 앞에 추가
		result = num + result;
		// 최종값 리턴
		return result;
	}
	
	
					//&itemPerPage: 1-10위 까지의 데이터가 출력되도록 설정
	const url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=79497ecabb6e26ac7267da5539baa52f&targetDt=${result}?itemPerPage=10";
							
	
	fetch(url)
	.then(res => res.json())
 	.then(function(res){ 
	
	
	 const movies = res.results;
   //   movies.append(function(movie){

	// console.log('Success:', data);
	
	        const div = document.createElement('div');
            const output = `
        
				<div class="poster">
                  <img src="https://an2-img.amz.wtchn.net/image/v2/612c4dc5b5b7b0df57bcf7aa02402dd2.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPalF3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpBNU9UZzFNakE1TURjeU56VTFNVEkzSWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3lPREI5Lmp3NllkRWtRTkE1UFBRTWdRMFRPOGRRRDMwcE1xLVY2RnBNbTY2UWNaWWs" alt="" class="movie_img">
                  <div class="rank">${div.rank}</div>
                  <div class="movie_info">
                   <h4>${div.movieNm}</h4>
                    <p><span>·</span>미국</p>
                    <p class="movie_average">평균<span>★</span>4.2</p>
                    <p class="movie_total">예매율 ${div.audiCnt}<span>·</span>누적 관객 ${div.audiAcc}</p>
                  </div>
                </div>

            `;

            div.innerHTML=output;
            movie_box.appendChild(div);
// });

})
.catch((error) => {
  console.error('Error:', error);
});
	