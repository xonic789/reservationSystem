package com.proj.yollowa.model.entity.cs;

import java.sql.Date;

/**
 * @author Cielo
 *
 */
public class QnaReplyVo {
	private int reply_no;
	private int qna_no;
	private String reply_text;
	private String reply_writer;
	private Date req_date;
	private Date update_date;
	
	public QnaReplyVo() {
	}

	public QnaReplyVo(int reply_no, int qna_no, String reply_text, String reply_writer, Date req_date,
			Date update_date) {
		super();
		this.reply_no = reply_no;
		this.qna_no = qna_no;
		this.reply_text = reply_text;
		this.reply_writer = reply_writer;
		this.req_date = req_date;
		this.update_date = update_date;
	}

	public int getReply_no() {
		return reply_no;
	}

	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	public String getReply_text() {
		return reply_text;
	}

	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}

	public String getReply_writer() {
		return reply_writer;
	}

	public void setReply_writer(String reply_writer) {
		this.reply_writer = reply_writer;
	}

	public Date getReq_date() {
		return req_date;
	}

	public void setReq_date(Date req_date) {
		this.req_date = req_date;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	@Override
	public String toString() {
		return "QnaReplyVo [reply_no=" + reply_no + ", qna_no=" + qna_no + ", reply_text=" + reply_text
				+ ", reply_writer=" + reply_writer + ", req_date=" + req_date + ", update_date=" + update_date + "]";
	}
	
	
	
}
