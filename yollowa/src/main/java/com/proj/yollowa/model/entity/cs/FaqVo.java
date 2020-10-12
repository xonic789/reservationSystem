package com.proj.yollowa.model.entity.cs;

import java.sql.Date;

public class FaqVo {
	private int faqno;
	private String title;
	private String writer;
	private String content;
	private Date writeddate;
	private int cnt;
	
	public FaqVo() {
	}

	public FaqVo(int faqno, String title, String writer, String content, Date writeddate, int cnt) {
		super();
		this.faqno = faqno;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.writeddate = writeddate;
		this.cnt = cnt;
	}

	public int getFaqno() {
		return faqno;
	}

	public void setFaqno(int faqno) {
		this.faqno = faqno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWriteddate() {
		return writeddate;
	}

	public void setWriteddate(Date writeddate) {
		this.writeddate = writeddate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "FaqVo [faqno=" + faqno + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", writeddate=" + writeddate + ", cnt=" + cnt + "]";
	}
	
	
}
