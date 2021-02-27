<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <script src="https://cdn.jsdelivr.net/npm/vue"></script>
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"
             integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
             crossorigin="anonymous"></script>
     <title>테스트페이지</title>
 </head>
 <body>
     <div id="content">
         <h1 v-for="x in 20"></h1>
     	<h2 v-for="data in dataList"></h2>
     </div>
 <script>
     var list = new Vue({
        el: '#content',
        data: {
            page: 0,
            dataList: [0,1,2,3,4,5,6,7],
        }
     });
    
     function infiniteScroll() {
         if ($(document).height() - 10<= $(window).height() + $(window).scrollTop()) {
             //페이지 증가
             list.page += 1;
             $.ajax({
                 url: '/getData?page='+list.page,
                 type: 'GET',
                 contentType: "application/json",
                 success: function(data){
                     console.log(data);
                     for(var i=0;i<data.length;i++)
                         list.dataList.push(data[i]);
                 }
             })
         }
     }
    
     $(document).ready(function(){
         $(window).scroll(infiniteScroll)
     });
 </script>
 </body>
 </html>