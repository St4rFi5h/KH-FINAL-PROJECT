<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal-dialog" role="document">
	<div class="modal-content">
		<div class="modal-header" id="modal-title-wrapper">
			<h5 class="modal-title" id="exampleModalLabel">신고하기</h5>
			<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="modal-body">
			<div id="report-modal-contents">
				<div id="report-modal-movie-title">
					<h5>제목</h5>
					<div>소울</div>
				</div>
				<div id="report-modal-author">
					<h5>작성자</h5>
					<div>지니어스현</div>
				</div>
				<div id="report-modal-comment-contents">
					<h5>내용</h5>
					<p>최고의 영화</p>
					<p>읏챠피디아를 뒤집어 놓으셨다</p>
				</div>
				<textarea id="report-modal-comment-zone" row="1" cols="1" rows="1"
					placeholder="신고하시는 이유를 작성해주세요."
					style="resize: none; width: 450px; height: 300px; padding: 10px;"></textarea>
			</div>
		</div>
		<div class="modal-footer" id="footer-buttons">
			<button type="button" class="btn btn-secondary" data-dismiss="modal"
				aria-label="Close" id="button-for-cancel">취소</button>
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#report-result-modal" data-dismiss="modal"
				aria-label="Close" id="button-for-submit">확인</button>
		</div>
	</div>
</div>