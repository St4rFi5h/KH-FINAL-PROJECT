
// 필수 항목 입력 검사
var requiredCheck = false;

/*var isEmail;
var isNick;*/

// 닉네임 유효성 검사
$("#input-nickname").focusout(function () {
    var nickname = $("#input-nickname").val();
    var nicknameCheckRegExp = /^[가-힣a-z0-9]{2,8}$/;
    var nicknameExists;

    var nicknameCheck = function () {
        if (nickname == "") {
            $("#nickname-required").text("닉네임을 입력해 주세요.");
            $("#nickname-required").css("background", "rgb(255, 240, 240)");
            $("#nickname-required").css("border", "1px solid rgb(245, 0, 0)");
            $("#nickname-required").css("color", "rgb(245, 0, 0)");
            requiredCheck = false;

        } else if (!nicknameCheckRegExp.test(nickname)) {
            $("#nickname-required").text("정확하지 않은 닉네임입니다.");
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
        url: '/nicknamechk',
        async: false,
        /*dataType:'json',
        contentType: "application/json; charset=UTF-8",*/
        data: {'memberNickname' : nickname},
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
           
        },
        
        error:function(request,status,error){
        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
       },

    })
    console.log(nicknameExists);
    if (nicknameExists == 0) {
        nicknameCheck();
    }
    
})

//이메일 유효성 검사
	 $("#input-email").focusout(function () {
	        var email = $("#input-email").val();
	        var emailCheckRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			var emailExists;
	        
	       	var emailCheck = function() {	       		
		        if (email == "") {
	                $("#email-required").html("이메일을 입력해 주세요.");
		            $("#email-required").css("background", "rgb(255, 240, 240)");
		            $("#email-required").css("border", "1px solid rgb(245, 0, 0)");
		            $("#email-required").css("color", "rgb(245, 0, 0)");
		            requiredCheck = false;
								
		        } else if (!emailCheckRegExp.test(email)) {
		            $("#email-required").html("이메일 형식에 맞지 않습니다.");
		            $("#email-required").css("background", "rgb(255, 240, 240)");
		            $("#email-required").css("border", "1px solid rgb(245, 0, 0)");
		            $("#email-required").css("color", "rgb(245, 0, 0)");
					requiredCheck = false;
			
		        } else if (emailCheckRegExp.test(email)) {
		            $("#email-required").html("사용 가능한 이메일입니다.");
					$("#email-required").css("background", "rgb(255, 240, 240)");
		            $("#email-required").css("border", "1px solid rgb(245, 0, 0)");
		            $("#email-required").css("color", "rgb(245, 0, 0)");
					requiredCheck = true;

		        }
	       	}
	       	
	       	console.log(email);
	       	
	       	$.ajax ({
	       		type : 'POST',
	       		url : '/emailchk',
	       		async: false,
	       		/*dataType:'json',
      			contentType: 'application/json; charset=UTF-8',*/
      			data: {'memberEmail' : email },
	       		success : function(result) {
	       			
	       			alert(result["msg"]);
                        window.location.reload()
                    
	       			if (result == 1) {
	       				$("#email-required").html("사용 중인 이메일 주소입니다.");
		           		$("#nickname-required").css("color", "rgb(245, 0, 0)");
						requiredCheck = false;
		       			emailExists = result;
		           		
	       			} else if (result == 0) {
	       				$("#email-required").css("display", "none");
						requiredCheck = true;
		       			emailExists = result;
	       			}
	       			
	       		}
	       		
	       	})
			
	       	console.log(emailExists);
	       	
	       	if (emailExists == 0) {
	       		emailCheck();
	       	}
	       	
	    })
		
	
					


