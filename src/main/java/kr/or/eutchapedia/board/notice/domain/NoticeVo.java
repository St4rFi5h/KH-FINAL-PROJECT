package kr.or.eutchapedia.board.notice.domain;

import java.sql.Date;

public class NoticeVo {
	
	private int noticeIdx;			// pk
	private String memberEmail;		// 회원식별자
	private String noticeTitle;		// 제목
	private String noticeContent;	// 내용
	private Date noticeDate;		// 작성일
	private String noticeFiles;		// 업로드파일
	private int noticePub;			// 공개여부
	
	public NoticeVo(int noticeIdx, String memberEmail, String noticeTitle, String noticeContent, Date noticeDate, String noticeFiles, int noticePub) {
		super();
		this.noticeIdx = noticeIdx;
		this.memberEmail = memberEmail;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeFiles = noticeFiles;
		this.noticePub = noticePub;
	}

	public int getNoticeIdx() {
		return noticeIdx;
	}

	public void setNoticeIdx(int noticeIdx) {
		this.noticeIdx = noticeIdx;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeFiles() {
		return noticeFiles;
	}

	public void setNoticeFiles(String noticeFiles) {
		this.noticeFiles = noticeFiles;
	}

	public int getNoticePub() {
		return noticePub;
	}

	public void setNoticePub(int noticePub) {
		this.noticePub = noticePub;
	}
	@Override
	public String toString() {
		return "NotiBoardDto [noticeIdx=" + noticeIdx + ", memberEmail=" + memberEmail + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate + ", noticeFiles=" + noticeFiles
				+ ", noticePub=" + noticePub + "]";
	}

}

