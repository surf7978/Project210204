package co.micol.VO;



public class noteVO {
	private String tId;
	private String nTitle;
	private String nContent;
	private String memberId;
	private String nDate;
	private String nNum;
	
	public noteVO() {
		// TODO Auto-generated constructor stub
	}

	public String gettId() {
		return tId;
	}

	public void settId(String tId) {
		this.tId = tId;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTItle) {
		this.nTitle = nTItle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getnDate() {
		return nDate;
	}

	public void setnDate(String nDate) {
		this.nDate = nDate;
	}

	public String getnNum() {
		return nNum;
	}

	public void setnNum(String nNum) {
		this.nNum = nNum;
	}

	@Override
	public String toString() {
		return "noteVO [tId=" + tId + ", nTitle=" + nTitle + ", nContent=" + nContent + ", memberId=" + memberId
				+ ", nDate=" + nDate + ", nNum=" + nNum + "]";
	}

	
	
	
}
