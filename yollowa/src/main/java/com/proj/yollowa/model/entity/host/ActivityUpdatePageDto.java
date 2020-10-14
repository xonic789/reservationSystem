package com.proj.yollowa.model.entity.host;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class ActivityUpdatePageDto {
	private int activity_number;
	private String activity_hashTag;
	private String activity_img;
	private MultipartFile[] titleImg;
	
	public ActivityUpdatePageDto() {
		// TODO Auto-generated constructor stub
	}

	public ActivityUpdatePageDto(int activity_number, String activity_hashTag, String activity_img,
			MultipartFile[] titleImg) {
		super();
		this.activity_number = activity_number;
		this.activity_hashTag = activity_hashTag;
		this.activity_img = activity_img;
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "ActivityUpdatePageDto [activity_number=" + activity_number + ", activity_hashTag=" + activity_hashTag
				+ ", activity_img=" + activity_img + ", titleImg=" + Arrays.toString(titleImg) + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((activity_hashTag == null) ? 0 : activity_hashTag.hashCode());
		result = prime * result + ((activity_img == null) ? 0 : activity_img.hashCode());
		result = prime * result + activity_number;
		result = prime * result + Arrays.hashCode(titleImg);
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
		ActivityUpdatePageDto other = (ActivityUpdatePageDto) obj;
		if (activity_hashTag == null) {
			if (other.activity_hashTag != null)
				return false;
		} else if (!activity_hashTag.equals(other.activity_hashTag))
			return false;
		if (activity_img == null) {
			if (other.activity_img != null)
				return false;
		} else if (!activity_img.equals(other.activity_img))
			return false;
		if (activity_number != other.activity_number)
			return false;
		if (!Arrays.equals(titleImg, other.titleImg))
			return false;
		return true;
	}

	public int getActivity_number() {
		return activity_number;
	}

	public void setActivity_number(int activity_number) {
		this.activity_number = activity_number;
	}

	public String getActivity_hashTag() {
		return activity_hashTag;
	}

	public void setActivity_hashTag(String activity_hashTag) {
		this.activity_hashTag = activity_hashTag;
	}

	public String getActivity_img() {
		return activity_img;
	}

	public void setActivity_img(String activity_img) {
		this.activity_img = activity_img;
	}

	public MultipartFile[] getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(MultipartFile[] titleImg) {
		this.titleImg = titleImg;
	}
	
	
}
