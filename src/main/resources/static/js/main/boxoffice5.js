
        // 조회할 날짜를 계산
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

    $(function() {

    $.ajax({
        //url : open_api, //호출할 서버쪽 프로그램의 URL
	url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=79497ecabb6e26ac7267da5539baa52f&targetDt="
		+ result + "&itemPerPage=10",
	dataType : "json",
success:function(data){

for(key in data){
console.log(data[key].movieNm);
console.log(data[key].openDt);
console.log(data[key].boxOfficeResult);
}
}
})
})