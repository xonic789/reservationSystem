package com.proj.yollowa.model.entity.mypage;

import java.sql.Date;

public class AllReviewViewVo {
	private String company;
	private String img;
	private int userNum;
	private int goodsNum;
	private int reviewNum;
	private int reviewCategoryNum;
	private int starNum;
	private Date reviewedDate;
	private String content;
	private String writer;
	
	public AllReviewViewVo() {
	}

	public AllReviewViewVo(String company, String img, int userNum, int goodsNum, int reviewNum, int reviewCategoryNum,
			int starNum, Date reviewedDate, String content, String writer) {
		super();
		this.company = company;
		this.img = img;
		this.userNum = userNum;
		this.goodsNum = goodsNum;
		this.reviewNum = reviewNum;
		this.reviewCategoryNum = reviewCategoryNum;
		this.starNum = starNum;
		this.reviewedDate = reviewedDate;
		this.content = content;
		this.writer = writer;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public int getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public int getReviewCategoryNum() {
		return reviewCategoryNum;
	}

	public void setReviewCategoryNum(int reviewCategoryNum) {
		this.reviewCategoryNum = reviewCategoryNum;
	}

	public int getStarNum() {
		return starNum;
	}

	public void setStarNum(int starNum) {
		this.starNum = starNum;
	}

	public Date getReviewedDate() {
		return reviewedDate;
	}

	public void setReviewedDate(Date reviewedDate) {
		this.reviewedDate = reviewedDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "AllReviewViewVo [company=" + company + ", img=" + img + ", userNum=" + userNum + ", goodsNum="
				+ goodsNum + ", reviewNum=" + reviewNum + ", reviewCategoryNum=" + reviewCategoryNum + ", starNum="
				+ starNum + ", reviewedDate=" + reviewedDate + ", content=" + content + ", writer=" + writer + "]";
	}
	
	
}
