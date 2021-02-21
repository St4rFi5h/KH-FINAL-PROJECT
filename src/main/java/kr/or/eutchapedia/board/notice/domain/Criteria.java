package kr.or.eutchapedia.board.notice.domain;

// 특정 페이지 조회를 위한 클래스
public class Criteria {
		
		private int pageNum; 	// 페이지 번호
		private int amount; 	// 페이지당 보여줄 게시글의 개수

		public Criteria() {
			this(1,10);
			
		}
		public Criteria(int pageNum, int amount) {
			this.pageNum = pageNum;
			this.amount = amount;
		}
		public int getPageNum() {
			return pageNum;
		}

		public void setPageNum(int pageNum) {
			this.pageNum = pageNum;
		}

		public int getAmount() {
			return amount;
		}

		public void setAmount(int amount) {
			this.amount = amount;
		}
		
		@Override
		public String toString() {
			return "Criteria [pageNum=" + pageNum + ", amount=" + amount + "]";
					
		}
}
