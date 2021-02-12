// 별점 부여 후 코멘트 div 나타내는 스크립트
var buttonForShowDiv = document.getElementById("star-rating");
var memberCommentDiv = document.getElementById("member-comment-zone");
var afterCommentZone = document.getElementById("after-comment-zone");

// 별점 
$('.star').on('click', function () {
    // console.log($(this).text());

    if ($(this).hasClass('on')) {
        // 별점 지우기
        $(this).parent().children().removeClass('on');
        var starMessage = document.getElementById("star-message");
        starMessage.innerText = "평가하기";
        memberCommentDiv.style.display = "none";
        afterCommentZone.style.display = "none";

    } else {
        $(this).addClass('on').prevAll('span').addClass('on');
        memberCommentDiv.style.display = "block";
        var starMessage = document.getElementById("star-message");

        var ratedStar = $(this).html();
        var starCount = $(this).prevAll().length / 2 + 0.5;
        ratedStar = starCount;


        switch (ratedStar) {
            case 0.5:
                starMessage.innerText = "최악이에요";
                break;
            case 1:
                starMessage.innerText = "싫어요";
                break;
            case 1.5:
                starMessage.innerText = "재미없어요";
                break;
            case 2:
                starMessage.innerText = "별로예요";
                break;
            case 2.5:
                starMessage.innerText = "부족해요";
                break;
            case 3:
                starMessage.innerText = "보통이에요";
                break;
            case 3.5:
                starMessage.innerText = "볼만해요";
                break;
            case 4:
                starMessage.innerText = "재미있어요";
                break;
            case 4.5:
                starMessage.innerText = "훌륭해요!";
                break;
            case 5:
                starMessage.innerText = "최고예요!";
                break;
        }
    }
})

// 코멘트 작성 후 div 바뀌게 하는 스크립트
var afterCommentDiv = document.getElementById("after-comment-zone");
var memberCommentZone = document.getElementById("modal-only-comment-zone");
var myCommentZone = document.getElementById("my-comment-zone");
var commentEditZone = document.getElementById("modal-only-comment-edit-zone");

function val() {
    var commentOfMember = memberCommentZone.value;
    console.log(commentOfMember);

    myCommentZone.innerHTML = commentOfMember;
    memberCommentDiv.style.display = "none";
    afterCommentDiv.style.display = "block";

}

// 코멘트 수정하기
function editComment() {
    var commentOfMember = myCommentZone.innerHTML;
    console.log(commentOfMember);

    commentEditZone.innerHTML = commentOfMember;
}

// 코멘트 수정 제출
function editCommentSubmit() {
    var comment = commentEditZone.value;
    console.log(comment);

    myCommentZone.innerHTML = comment;
}

function afterWannaWatch() {
    $('#wanna-watch').text("+ 보고싶어요");
    $('#wanna-watch').css('background-color', 'white');
    $('#wanna-watch').css('color', 'rgb(255, 7, 88)');
    $('#wanna-watch').css('border', '2px solid rgb(255, 7, 88)');
    $('#wanna-watch').css('font-weight', 'bold');
}

// 코멘트 삭제하기
var buttonForDelete = document.getElementById("button-for-delete-submit");

buttonForDelete.onclick = function () {
    alert("코멘트가 삭제되었습니다.");
    afterCommentZone.style.display = "none";
    memberCommentDiv.style.display = "block";
}