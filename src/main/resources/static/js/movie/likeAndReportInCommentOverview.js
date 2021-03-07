function clickLikeButton(cIndex) {
	var commentIndex = cIndex;
	var idx = $(event.target);

	var likeCountIndex = "like-count" + commentIndex;

	$.ajax({
		type: 'POST',
		url: '/commentLike',
		/* async : false, */
		data: "commentIndex=" + commentIndex,
		success: function (result) {

			if (result.likeCheck == 1) {
				idx.css("background-color", "rgb(255, 7, 88)");
				idx.css("color", "white");

			} else if (result.likeCheck == 0) {
				idx.css("background-color", "white")
				idx.css("color", "black");

			}
			$("#" + likeCountIndex).empty();
			$("#" + likeCountIndex).append(result.likeCount);


		},
		error: function () {
			alert("error!");

		}

	});


}

function submitReport(cIndex) {
	var commentIndex = cIndex;
	var reportText = $("#report-modal-comment-zone").val();
	console.log(reportText);

	$.ajax({
		type: 'POST',
		url: '/reportComment',
		async: false,
		data: "commentIndex=" + commentIndex + "&reportText=" + reportText,
		success: function (result) {
			console.log(result);

		},

		error: function () {
			alert('error!');

		}

	});

}