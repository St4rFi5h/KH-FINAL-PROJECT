package kr.or.eutchapedia.board.entity;

public class Faq {
	private int faqNo;			//faq게시판 식별자
	private String memberEmail;	//아이디
	private String faqTitle;	//faq 제목
	private String faqContent;	//faq 내용
	private String faqFiles;	//faq 파일 디비 수정해야함!!!!!!!
	private int faqPub;			//faq 공개여부
	
	public Faq() {
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getFaqFiles() {
		return faqFiles;
	}

	public void setFaqFiles(String faqFiles) {
		this.faqFiles = faqFiles;
	}

	public int getFaqPub() {
		return faqPub;
	}

	public void setFaqPub(int faqPub) {
		this.faqPub = faqPub;
	}

	@Override
	public String toString() {
		return "Faq [faqNo=" + faqNo + ", memberEmail=" + memberEmail + ", faqTitle=" + faqTitle + ", faqContent="
				+ faqContent + ", faqFiles=" + faqFiles + ", faqPub=" + faqPub + "]";
	}
	
	
}
