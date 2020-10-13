package com.proj.yollowa.model.entity.activity;

import java.sql.Date;

public class ReviewVo {

	private int review_reviewNumber;
	private int review_articleNumber;
	private String review_title;
	private int review_userNumber;
	private int review_reservNumber;
	private int review_category;
	private int review_starPoint;
	private Date review_writedDate;
	private String review_content;
	private String review_writer;
	
	public ReviewVo() {
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + review_articleNumber;
		result = prime * result + review_category;
		result = prime * result + ((review_content == null) ? 0 : review_content.hashCode());
		result = prime * result + review_reservNumber;
		result = prime * result + review_reviewNumber;
		result = prime * result + review_starPoint;
		result = prime * result + ((review_title == null) ? 0 : review_title.hashCode());
		result = prime * result + review_userNumber;
		result = prime * result + ((review_writedDate == null) ? 0 : review_writedDate.hashCode());
		result = prime * result + ((review_writer == null) ? 0 : review_writer.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReviewVo other = (ReviewVo) obj;
		if (review_articleNumber != other.review_articleNumber)
			return false;
		if (review_category != other.review_category)
			return false;
		if (review_content == null) {
			if (other.review_content != null)
				return false;
		} else if (!review_content.equals(other.review_content))
			return false;
		if (review_reservNumber != other.review_reservNumber)
			return false;
		if (review_reviewNumber != other.review_reviewNumber)
			return false;
		if (review_starPoint != other.review_starPoint)
			return false;
		if (review_title == null) {
			if (other.review_title != null)
				return false;
		} else if (!review_title.equals(other.review_title))
			return false;
		if (review_userNumber != other.review_userNumber)
			return false;
		if (review_writedDate == null) {
			if (other.review_writedDate != null)
				return false;
		} else if (!review_writedDate.equals(other.review_writedDate))
			return false;
		if (review_writer == null) {
			if (other.review_writer != null)
				return false;
		} else if (!review_writer.equals(other.review_writer))
			return false;
		return true;
	}

	public ReviewVo(int review_reviewNumber, int review_articleNumber, String review_title, int review_userNumber,
			int review_reservNumber, int review_category, int review_starPoint, Date review_writedDate,
			String review_content, String review_writer) {
		super();
		this.review_reviewNumber = review_reviewNumber;
		this.review_articleNumber = review_articleNumber;
		this.review_title = review_title;
		this.review_userNumber = review_userNumber;
		this.review_reservNumber = review_reservNumber;
		this.review_category = review_category;
		this.review_starPoint = review_starPoint;
		this.review_writedDate = review_writedDate;
		this.review_content = review_content;
		this.review_writer = review_writer;
	}

	@Override
	public String toString() {
		return "ReviewVo [review_reviewNumber=" + review_reviewNumber + ", review_articleNumber=" + review_articleNumber
				+ ", review_title=" + review_title + ", review_userNumber=" + review_userNumber
				+ ", review_reservNumber=" + review_reservNumber + ", review_category=" + review_category
				+ ", review_starPoint=" + review_starPoint + ", review_writedDate=" + review_writedDate
				+ ", review_content=" + review_content + ", review_writer=" + review_writer + "]";
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

	public int getReview_reservNumber() {
		return review_reservNumber;
	}

	public void setReview_reservNumber(int review_reservNumber) {
		this.review_reservNumber = review_reservNumber;
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

	
	
}
