var page = 2;
var dataloading = false;
var dosi = $("#selectState option:selected").val();

$(window).scroll(function() {
    if ($(window).scrollTop() == $(document).height() - $(window).height()) {
      console.log(++page);
      $("body").append('<div class="movielist"><h1>Page ' + page + '</h1></div>');
      
    }
});

		
		$('.camping-list').scroll(function() {
			var scrollTop = $(this).scrollTop();
			var boxheight = $(this).height();
			var listheight = 0;	
			
			$(this).find('.list-box').each(function(index, box) {
				listheight += $(box).height();
			})
				
			if (!dataloading) {
				
				if((boxheight+scrollTop+100) > listheight){
					
					$.ajax({
						type:"GET",
						url:"maplist.camp",
						data:{cp:page , city:dosi , status:stat, keyword:keyword, sort:sort},
						dataType:"json",
						beforeSend: function() {
							dataloading = true;
						},
						complete: function() {
							dataloading = false;
						},
						success:function(result){
							console.log("새 데이터 도착............")
							page++;
	
							$.each(result , function(index , list){
								
								var row = "<div class='col-sm-12 col-xs-4 list-box'>";
									row+= "<div class='left-photo'>";
									row+= "<img src='resources/images/update.png' class='new'>";
									if(list.photo == null){
										row+= "<img class='tm' src='resources/images/campsite/noimg.jpg'>";
									}else{
										row+= "<img class='tm' src='resources/images/campsite/"+list.photo+"'>";
									}
									row+= "</div>";
									row+= "<div class='content'>";
									row+= "<div class='subject'>";
									row+= "<a href='#' class='campsite-name' data-Lat='"+list.latitude+"' data-lng='"+list.longitude+"'>";
									row+= sort;
									row+= list.name;
									row+="</a>";
									row+="</div>";
									row+="<div class='cont'>";
									row+="<p class='location'>";
									row+="<a href='map.camp?city="+list.sido+"'><span class='address2'>"+list.sido+"> </span></a><span>"+list.gugun+"</span>";
									row+="</p>";
									row+="<ul>";
									row+="<li class='address'>"+list.address+"</li>";
									row+="<li class='tel'>"+list.tel+"</li>";
									row+="</ul>";
									row+="</div>";
									row+="</div>";
									
								$(".camping-list").append(row);
							});
						}
					});
				}
			}
			
		});