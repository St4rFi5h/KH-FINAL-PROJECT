
   var divTag = $('div');
		var itemPerPage = 15;
		var key = 'c7f5900428a898de87fc1c47a20e77ec';
		var page = 1;
		$.ajax({
			url : 'https://api.themoviedb.org/3/trending/all/day?&language=ko-KR&movie=top_rated&api_key=' + key
					+ '&page=' + page,
			type : 'get',
			success : function(data) {
				$.fn.show(data.results);
				}
			});
	
		$.fn.show = function(data) {
			$.each(data, function (index, value) {
				if(index<5) {
					if(index>0) {
						$('test').append($('#poster-0').clone().attr('id', 'poster-'+index));
					}
					divTag.children('.movie').attr('src', 'https://image.tmdb.org/t/p/w200'+value.poster_path);
				}
			})
		}
		
	
		
		// divTag.clone().attr('id', 'aaa');
		// $('body').append(divTag.clone().attr('id', 'aaa'));