package com.proj.yollowa.model.entity.admin;

public class LodgementApprovalVo {
	private int lodgement_number;
	private int lodgement_userNumber;
	private String lodgement_companyName;
	private String lodgement_img;
	private int lodgement_temp;
	
	private int user_number;
	private String user_companyname;
	private String user_name;
	
	public LodgementApprovalVo() {
	}

	public LodgementApprovalVo(int lodgement_number, int lodgement_userNumber, String lodgement_companyName,
			String lodgement_img, int lodgement_temp, int user_number, String user_companyname, String user_name) {
		super();
		this.lodgement_number = lodgement_number;
		this.lodgement_userNumber = lodgement_userNumber;
		this.lodgement_companyName = lodgement_companyName;
		this.lodgement_img = lodgement_img;
		this.lodgement_temp = lodgement_temp;
		this.user_number = user_number;
		this.user_companyname = user_companyname;
		this.user_name = user_name;
	}

	public int getLodgement_number() {
		return lodgement_number;
	}

	public void setLodgement_number(int lodgement_number) {
		this.lodgement_number = lodgement_number;
	}

	public int getLodgement_userNumber() {
		return lodgement_userNumber;
	}

	public void setLodgement_userNumber(int lodgement_userNumber) {
		this.lodgement_userNumber = lodgement_userNumber;
	}

	public String getLodgement_companyName() {
		return lodgement_companyName;
	}

	public void setLodgement_companyName(String lodgement_companyName) {
		this.lodgement_companyName = lodgement_companyName;
	}

	public String getLodgement_img() {
		return lodgement_img;
	}

	public void setLodgement_img(String lodgement_img) {
		this.lodgement_img = lodgement_img;
	}

	public int getLodgement_temp() {
		return lodgement_temp;
	}

	public void setLodgement_temp(int lodgement_temp) {
		this.lodgement_temp = lodgement_temp;
	}

	public int getUser_number() {
		return user_number;
	}

	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}

	public String getUser_companyname() {
		return user_companyname;
	}

	public void setUser_companyname(String user_companyname) {
		this.user_companyname = user_companyname;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	@Override
	public String toString() {
		return "LodgementApprovalVo [lodgement_number=" + lodgement_number + ", lodgement_userNumber="
				+ lodgement_userNumber + ", lodgement_companyName=" + lodgement_companyName + ", lodgement_img="
				+ lodgement_img + ", lodgement_temp=" + lodgement_temp + ", user_number=" + user_number
				+ ", user_companyname=" + user_companyname + ", user_name=" + user_name + "]";
	}
	
}
