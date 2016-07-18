package com.hanbit.vo;

public class VO_board {  

	private String b_idx,type, name, subject, content, board_file, regdate, hit;


	public VO_board() {

	}
	public VO_board(String b_idx, String type, String name, String subject, String content, String board_file,
			String regdate, String hit) {
		super();
		this.b_idx = b_idx;

	}     
	public VO_board(String type, String name, String subject, String content, String board_file, String regdate,
			String hit) {
		super();      

		this.type = type;
		this.name = name;
		this.subject = subject;
		this.content = content;
		this.board_file = board_file;
		this.regdate = regdate;
		this.hit = hit;

	}
	public String getB_idx() {
		return b_idx;
	}
	public void setB_idx(String b_idx) {
		this.b_idx = b_idx;

	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getBoard_file() {
		return board_file;
	}
	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;

	}     
	

	}

	

