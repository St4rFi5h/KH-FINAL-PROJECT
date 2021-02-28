package kr.or.eutchapedia.mypage.entity;

import java.sql.Date;

public class CommentVo {

	private int commentIndex;
	private int starIndex;
	private String commentText;
	private int commentLikeCount;
	private int commentReportCount;
	private int commentBlindCheck;
	private Date commentDate;
	
	private StarRatingVo starRatingVo;	// join할 vo
	
	public int getCommentIndex() {
		return commentIndex;
	}
	public void setCommentIndex(int commentIndex) {
		this.commentIndex = commentIndex;
	}
	public int getStarIndex() {
		return starIndex;
	}
	public void setStarIndex(int starIndex) {
		this.starIndex = starIndex;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public int getCommentLikeCount() {
		return commentLikeCount;
	}
	public void setCommentLikeCount(int commentLikeCount) {
		this.commentLikeCount = commentLikeCount;
	}
	public int getCommentReportCount() {
		return commentReportCount;
	}
	public void setCommentReportCount(int commentReportCount) {
		this.commentReportCount = commentReportCount;
	}
	public int getCommentBlindCheck() {
		return commentBlindCheck;
	}
	public void setCommentBlindCheck(int commentBlindCheck) {
		this.commentBlindCheck = commentBlindCheck;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public StarRatingVo getStarRatingVo() {
		return starRatingVo;
	}
	public void setStarRatingVo(StarRatingVo starRatingVo) {
		this.starRatingVo = starRatingVo;
	}
	@Override
	public String toString() {
		return "CommentVo [commentIndex=" + commentIndex + ", starIndex=" + starIndex + ", commentText=" + commentText
				+ ", commentLikeCount=" + commentLikeCount + ", commentReportCount=" + commentReportCount
				+ ", commentBlindCheck=" + commentBlindCheck + ", commentDate=" + commentDate + ", starRatingVo="
				+ starRatingVo + "]";
	}
	
	
}
