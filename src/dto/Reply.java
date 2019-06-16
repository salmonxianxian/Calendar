package dto;

import java.util.Date;

public class Reply {

	private int rnum;
	private int replyno;
	private String nickname;
	private int boardno;
	private String recontent;
	private Date insertdate;
	
	
	@Override
	public String toString() {
		return "Reply [rnum=" + rnum + ", replyno=" + replyno + ", nickname=" + nickname + ", boardno=" + boardno
				+ ", recontent=" + recontent + ", insertdate=" + insertdate + "]";
	}


	public int getRnum() {
		return rnum;
	}


	public void setRnum(int rnum) {
		this.rnum = rnum;
	}


	public int getReplyno() {
		return replyno;
	}


	public void setReplyno(int replyno) {
		this.replyno = replyno;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public int getBoardno() {
		return boardno;
	}


	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}


	public String getRecontent() {
		return recontent;
	}


	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}


	public Date getInsertdate() {
		return insertdate;
	}


	public void setInsertdate(Date insertdate) {
		this.insertdate = insertdate;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
