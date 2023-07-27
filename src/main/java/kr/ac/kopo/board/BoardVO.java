package kr.ac.kopo.board;

import java.util.Date;

public class BoardVO {

	private int no;
	private String title;
	private String id;
	private String content;
	private Date regDate;
	private int views;
	
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", id=" + id + ", content=" + content + ", regDate=" + regDate
				+ ", views=" + views + "]";
	}
	
	
	public BoardVO() {
		super();
		
	}
	
	
}
