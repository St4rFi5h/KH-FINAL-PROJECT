
// 필수 항목 입력 검사
var requiredCheck = false;

// 닉네임 유효성 검사
$("#input-nickname").focusout(function () {
    var nickname = $("#input-nickname").val();
    var nicknameCheckRegExp = /^[가-힣a-z0-9]{2,8}$/;
    var nicknameExists;

    var nicknameCheck = function () {
        if (nickname == "") {
            $("#nickname-required").html("닉네임을 입력해 주세요.");
            $("#nickname-required").css("background", "rgb(255, 240, 240)");
            $("#nickname-required").css("border", "1px solid rgb(245, 0, 0)");
            $("#nickname-required").css("color", "rgb(245, 0, 0)");
            requiredCheck = false;

        } else if (!nicknameCheckRegExp.test(nickname)) {
            $("#nickname-required").html("정확하지 않은 닉네임입니다.");
            $("#nickname-required").css("background", "rgb(255, 240, 240)");
            $("#nickname-required").css("border", "1px solid rgb(245, 0, 0)");
            $("#nickname-required").css("color", "rgb(245, 0, 0)");
            requiredCheck = false;

        } else if (nicknameCheckRegExp.test(nickname)) {
            $("#nickname-required").html("사용 가능한 닉네임입니다.");
            requiredCheck = true;
        }
    }

    $.ajax({
        type: 'POST',
        url: 'signup',
        async : false,
        data: {nickname: nickname},
        success: function (result) {
            if (result == 1) {
                $("#nickname-required").html("사용 중인 닉네임입니다.");
                $("#nickname-required").css("color", "rgb(245, 0, 0)");
                requiredCheck = false;

            } else if (result == 0) {
                $("#nickname-required").css("display", "none");
                requiredCheck = true;
            }
            nicknameExists = result;
        }
    })
    console.log(nicknameExists);
    if (nicknameExists == 0) {
        nicknameCheck();
    }
})



