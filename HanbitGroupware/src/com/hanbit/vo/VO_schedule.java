package com.hanbit.vo;


public class VO_schedule {
private	String type, id, subject, content, start_date, end_date;
public VO_schedule() {}

	public VO_schedule(String type, String id, String subject, String content, String start_date, String end_date) {
	
	this.type = type;
	this.id = id;
	this.subject = subject;
	this.content = content;
	this.start_date = start_date;
	this.end_date = end_date;
}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
}
