package kr.or.eutchapedia.board.notice.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVo {
	
	private long noticeNo;			// pk
	private String memberEmail;		// 회원식별자
	private String noticeTitle;		// 제목
	private String noticeContent;	// 내용
	private Date noticeDate;		// 작성일
	private String noticeFiles;		// fileName
	private long noticePub;			// 공개여부
	private MultipartFile uploadFile;

	public long getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(long noticeNo) {
		this.noticeNo = noticeNo;
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

	public long getNoticePub() {
		return noticePub;
	}

	public void setNoticePub(long noticePub) {
		this.noticePub = noticePub;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	@Override
	public String toString() {
		return "NoticeVo [noticeNo=" + noticeNo + ", memberEmail=" + memberEmail + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate + ", noticeFiles=" + noticeFiles
				+ ", noticePub=" + noticePub + "]";
	}

	
	
	

}

