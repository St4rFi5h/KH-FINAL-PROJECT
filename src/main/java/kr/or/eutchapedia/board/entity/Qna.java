package kr.or.eutchapedia.board.entity;

import java.util.Date;

public class Qna {
	private int qnaNo;			//qna게시판 식별자
	private String memberEmail;	//아이디
	private String qnaTitle;	//qna 제목
	private String qnaContent;	//qna 내용
	private Date qnaDate;		//qna 등록날짜
	private String qnaFiles;	//qna 파일
	private int qnaAnswer;		//qna 답변여부
	private String answerConentent;//qna 답변내용
	private String answerFiles;	   //qna 답변파일			
	
	public Qna() {
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaFiles() {
		return qnaFiles;
	}

	public void setQnaFiles(String qnaFiles) {
		this.qnaFiles = qnaFiles;
	}

	public int getQnaAnswer() {
		return qnaAnswer;
	}

	public void setQnaAnswer(int qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}

	public String getAnswerConentent() {
		return answerConentent;
	}

	public void setAnswerConentent(String answerConentent) {
		this.answerConentent = answerConentent;
	}

	public String getAnswerFiles() {
		return answerFiles;
	}

	public void setAnswerFiles(String answerFiles) {
		this.answerFiles = answerFiles;
	}

	@Override
	public String toString() {
		return "Qna [qnaNo=" + qnaNo + ", memberEmail=" + memberEmail + ", qnaTitle=" + qnaTitle + ", qnaContent="
				+ qnaContent + ", qnaDate=" + qnaDate + ", qnaFiles=" + qnaFiles + ", qnaAnswer=" + qnaAnswer
				+ ", answerConentent=" + answerConentent + ", answerFiles=" + answerFiles + "]";
	}
	
	
}
