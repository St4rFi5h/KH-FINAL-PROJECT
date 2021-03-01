
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
    let user_date = $('#userInputDate').val()
    let user_key = '79497ecabb6e26ac7267da5539baa52f'
    let open_api = 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json'

    $.ajax({
        url : open_api, //호출할 서버쪽 프로그램의 URL
        type : 'GET',   //서버쪽에서 GET방식으로 호출하라고 되어있음
        dataType : 'json', //결과 데이터가 어떤 타입으로 오느냐
        data : {   //넘겨줘야 되는 것(날짜랑 키)
            key : user_key,
            targetDt : user_date
        },
        success : function(result) {  //정해진거임. 성공시 호출됨.
            //alert('서버 호출 성공!!') //제대로 되나 확인

            $('#test').empty(); //후손 날려서 테이블 클린작업
            //서버로부터 결과 json을 받아왔다!!
            //json은 단순 문자열 => 사용하기 쉽지않다
            //json => javascript 객체로 변환시킨다
            let movie_list=result['boxOfficeResult']['dailyBoxOfficeList']
            //json보고 원하는 부분 발췌
            for(let i=0; i<movie_list.length ;i++) {
                let m_rank = movie_list[i].rank//순위
                let m_name = movie_list[i].movieNm//영화이름
                let m_audi = movie_list[i].audiAcc//관람객수
                let m_open = movie_list[i].openDt//개봉일
                let m_sales = movie_list[i].salesAcc//누적매출액
                //데이터를 가져왔으니 이제 HTML element를 생성

                let movie = $('<ul></ul>')
                let rank = $('<li></li>').text(m_rank)
                let title = $('<li></li>').text(m_name)
                let audi = $('<li></;>').text(m_audi)
                let open = $('<li></li>').text(m_open)
                let sale = $('<li></li>').text(m_sales)

                movie.append(rank)
                movie.append(title)
                movie.append(audi)
                movie.append(sale)
                movie.append(open)

                $("#test").append(movie)
            }
        },
        error : function () {  // 실패시 호출됨.
            alert('서버 호출 실패!!')
        }
    });
});