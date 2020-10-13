package com.proj.yollowa.model.entity.admin;

public class ActivityApprovalVo {
	private int activity_number;
	private int activity_userNumber;
	private String activity_title;
	private String activity_img;
	private int activity_temp;
	
	private int user_number;
	private String user_companyname;
	private String user_name;
	
	public ActivityApprovalVo() {
	}

	public ActivityApprovalVo(int activity_number, int activity_userNumber, String activity_title, String activity_img,
			int activity_temp, int user_number, String user_companyname, String user_name) {
		super();
		this.activity_number = activity_number;
		this.activity_userNumber = activity_userNumber;
		this.activity_title = activity_title;
		this.activity_img = activity_img;
		this.activity_temp = activity_temp;
		this.user_number = user_number;
		this.user_companyname = user_companyname;
		this.user_name = user_name;
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
		return "ActivityApprovalVo [activity_number=" + activity_number + ", activity_userNumber=" + activity_userNumber
				+ ", activity_title=" + activity_title + ", activity_img=" + activity_img + ", activity_temp="
				+ activity_temp + ", user_number=" + user_number + ", user_companyname=" + user_companyname
				+ ", user_name=" + user_name + "]";
	}

}
