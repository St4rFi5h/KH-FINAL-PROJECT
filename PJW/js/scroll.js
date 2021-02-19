var page = 2;

$(window).scroll(function() {
    if ($(window).scrollTop() == $(document).height() - $(window).height()) {
      console.log(++page);
      $("body").append('<div class="movielist"><h1>Page ' + page + '</h1></div>');
      
    }
});