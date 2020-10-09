package com.proj.yollowa.model.entity.cs;

import java.sql.Date;

/**
 * @author Cielo
 *
 */
public class QnaReplyVo {
	private int replyNo;
	private int qnaNo;
	private String replyText;
	private String replyWriter;
	private Date reqDate;
	private Date updateDate;
	
	public QnaReplyVo() {
	}

	public QnaReplyVo(int replyNo, int qnaNo, String replyText, String replyWriter, Date reqDate, Date updateDate) {
		super();
		this.replyNo = replyNo;
		this.qnaNo = qnaNo;
		this.replyText = replyText;
		this.replyWriter = replyWriter;
		this.reqDate = reqDate;
		this.updateDate = updateDate;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getReplyText() {
		return replyText;
	}

	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public Date getReqDate() {
		return reqDate;
	}

	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "QnaReplyVo [replyNo=" + replyNo + ", qnaNo=" + qnaNo + ", replyText=" + replyText + ", replyWriter="
				+ replyWriter + ", reqDate=" + reqDate + ", updateDate=" + updateDate + "]";
	}
	
	
	
}
