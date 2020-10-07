package com.proj.yollowa.model.entity.host;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class LodgementUpdatePageDto {
	private int lodgement_number;
	private String lodgement_hashTag;
	private String lodgement_img;
	private MultipartFile[] titleImg;
	
	public LodgementUpdatePageDto() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "LodgementUpdatePageDto [lodgement_number=" + lodgement_number + ", lodgement_hashTag="
				+ lodgement_hashTag + ", lodgement_img=" + lodgement_img + ", titleImg=" + Arrays.toString(titleImg)
				+ "]";
	}
	public LodgementUpdatePageDto(int lodgement_number, String lodgement_hashTag, String lodgement_img,
			MultipartFile[] titleImg) {
		super();
		this.lodgement_number = lodgement_number;
		this.lodgement_hashTag = lodgement_hashTag;
		this.lodgement_img = lodgement_img;
		this.titleImg = titleImg;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((lodgement_hashTag == null) ? 0 : lodgement_hashTag.hashCode());
		result = prime * result + ((lodgement_img == null) ? 0 : lodgement_img.hashCode());
		result = prime * result + lodgement_number;
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
		LodgementUpdatePageDto other = (LodgementUpdatePageDto) obj;
		if (lodgement_hashTag == null) {
			if (other.lodgement_hashTag != null)
				return false;
		} else if (!lodgement_hashTag.equals(other.lodgement_hashTag))
			return false;
		if (lodgement_img == null) {
			if (other.lodgement_img != null)
				return false;
		} else if (!lodgement_img.equals(other.lodgement_img))
			return false;
		if (lodgement_number != other.lodgement_number)
			return false;
		if (!Arrays.equals(titleImg, other.titleImg))
			return false;
		return true;
	}
	public int getLodgement_number() {
		return lodgement_number;
	}
	public void setLodgement_number(int lodgement_number) {
		this.lodgement_number = lodgement_number;
	}
	public String getLodgement_hashTag() {
		return lodgement_hashTag;
	}
	public void setLodgement_hashTag(String lodgement_hashTag) {
		this.lodgement_hashTag = lodgement_hashTag;
	}
	public String getLodgement_img() {
		return lodgement_img;
	}
	public void setLodgement_img(String lodgement_img) {
		this.lodgement_img = lodgement_img;
	}
	public MultipartFile[] getTitleImg() {
		return titleImg;
	}
	public void setTitleImg(MultipartFile[] titleImg) {
		this.titleImg = titleImg;
	}
	
	
	
}
