package com.proj.yollowa.model.entity.mypage;

import java.sql.Date;

public class ActivityReviewVo {
	
	private int review_reviewNumber;
	private int review_articleNumber;
	private String review_title;
	private int review_userNumber;
	private int review_resevNumber;
	private int review_category;
	private int review_starPoint;
	private Date review_writedDate;
	private String review_content;
	private String review_writer;
	private int activity_number;
	private int activity_userNumber;
	private String activity_title;
	private String activity_location;
	private String activity_LatLng;
	private String activity_category;
	private String activity_hashTag;
	private int activity_goodCount;
	private double activity_reviewGradeRate;
	private int activity_reviewCount;
	private String activity_img;
	private int activity_temp;
	
	public ActivityReviewVo() {
	}

	public ActivityReviewVo(int review_reviewNumber, int review_articleNumber, String review_title,
			int review_userNumber, int review_resevNumber, int review_category, int review_starPoint,
			Date review_writedDate, String review_content, String review_writer, int activity_number,
			int activity_userNumber, String activity_title, String activity_location, String activity_LatLng,
			String activity_category, String activity_hashTag, int activity_goodCount, double activity_reviewGradeRate,
			int activity_reviewCount, String activity_img, int activity_temp) {
		super();
		this.review_reviewNumber = review_reviewNumber;
		this.review_articleNumber = review_articleNumber;
		this.review_title = review_title;
		this.review_userNumber = review_userNumber;
		this.review_resevNumber = review_resevNumber;
		this.review_category = review_category;
		this.review_starPoint = review_starPoint;
		this.review_writedDate = review_writedDate;
		this.review_content = review_content;
		this.review_writer = review_writer;
		this.activity_number = activity_number;
		this.activity_userNumber = activity_userNumber;
		this.activity_title = activity_title;
		this.activity_location = activity_location;
		this.activity_LatLng = activity_LatLng;
		this.activity_category = activity_category;
		this.activity_hashTag = activity_hashTag;
		this.activity_goodCount = activity_goodCount;
		this.activity_reviewGradeRate = activity_reviewGradeRate;
		this.activity_reviewCount = activity_reviewCount;
		this.activity_img = activity_img;
		this.activity_temp = activity_temp;
	}

	public int getReview_reviewNumber() {
		return review_reviewNumber;
	}

	public void setReview_reviewNumber(int review_reviewNumber) {
		this.review_reviewNumber = review_reviewNumber;
	}

	public int getReview_articleNumber() {
		return review_articleNumber;
	}

	public void setReview_articleNumber(int review_articleNumber) {
		this.review_articleNumber = review_articleNumber;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public int getReview_userNumber() {
		return review_userNumber;
	}

	public void setReview_userNumber(int review_userNumber) {
		this.review_userNumber = review_userNumber;
	}

	public int getReview_resevNumber() {
		return review_resevNumber;
	}

	public void setReview_resevNumber(int review_resevNumber) {
		this.review_resevNumber = review_resevNumber;
	}

	public int getReview_category() {
		return review_category;
	}

	public void setReview_category(int review_category) {
		this.review_category = review_category;
	}

	public int getReview_starPoint() {
		return review_starPoint;
	}

	public void setReview_starPoint(int review_starPoint) {
		this.review_starPoint = review_starPoint;
	}

	public Date getReview_writedDate() {
		return review_writedDate;
	}

	public void setReview_writedDate(Date review_writedDate) {
		this.review_writedDate = review_writedDate;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_writer() {
		return review_writer;
	}

	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}

	public int getActivity_number() {
		return activity_number;
	}

	public void setActivity_number(int activity_number) {
		this.activity_number = activity_number;
	}

	public int getActivity_userNumber() {
		return activity_userNumber;
	}

	public void setActivity_userNumber(int activity_userNumber) {
		this.activity_userNumber = activity_userNumber;
	}

	public String getActivity_title() {
		return activity_title;
	}

	public void setActivity_title(String activity_title) {
		this.activity_title = activity_title;
	}

	public String getActivity_location() {
		return activity_location;
	}

	public void setActivity_location(String activity_location) {
		this.activity_location = activity_location;
	}

	public String getActivity_LatLng() {
		return activity_LatLng;
	}

	public void setActivity_LatLng(String activity_LatLng) {
		this.activity_LatLng = activity_LatLng;
	}

	public String getActivity_category() {
		return activity_category;
	}

	public void setActivity_category(String activity_category) {
		this.activity_category = activity_category;
	}

	public String getActivity_hashTag() {
		return activity_hashTag;
	}

	public void setActivity_hashTag(String activity_hashTag) {
		this.activity_hashTag = activity_hashTag;
	}

	public int getActivity_goodCount() {
		return activity_goodCount;
	}

	public void setActivity_goodCount(int activity_goodCount) {
		this.activity_goodCount = activity_goodCount;
	}

	public double getActivity_reviewGradeRate() {
		return activity_reviewGradeRate;
	}

	public void setActivity_reviewGradeRate(double activity_reviewGradeRate) {
		this.activity_reviewGradeRate = activity_reviewGradeRate;
	}

	public int getActivity_reviewCount() {
		return activity_reviewCount;
	}

	public void setActivity_reviewCount(int activity_reviewCount) {
		this.activity_reviewCount = activity_reviewCount;
	}

	public String getActivity_img() {
		return activity_img;
	}

	public void setActivity_img(String activity_img) {
		this.activity_img = activity_img;
	}

	public int getActivity_temp() {
		return activity_temp;
	}

	public void setActivity_temp(int activity_temp) {
		this.activity_temp = activity_temp;
	}

	@Override
	public String toString() {
		return "ActivityReviewVo [review_reviewNumber=" + review_reviewNumber + ", review_articleNumber="
				+ review_articleNumber + ", review_title=" + review_title + ", review_userNumber=" + review_userNumber
				+ ", review_resevNumber=" + review_resevNumber + ", review_category=" + review_category
				+ ", review_starPoint=" + review_starPoint + ", review_writedDate=" + review_writedDate
				+ ", review_content=" + review_content + ", review_writer=" + review_writer + ", activity_number="
				+ activity_number + ", activity_userNumber=" + activity_userNumber + ", activity_title="
				+ activity_title + ", activity_location=" + activity_location + ", activity_LatLng=" + activity_LatLng
				+ ", activity_category=" + activity_category + ", activity_hashTag=" + activity_hashTag
				+ ", activity_goodCount=" + activity_goodCount + ", activity_reviewGradeRate="
				+ activity_reviewGradeRate + ", activity_reviewCount=" + activity_reviewCount + ", activity_img="
				+ activity_img + ", activity_temp=" + activity_temp + "]";
	}

	
	
}
