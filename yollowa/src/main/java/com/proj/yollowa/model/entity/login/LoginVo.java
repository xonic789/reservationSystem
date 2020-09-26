package com.proj.yollowa.model.entity.login;


public class LoginVo {
	
	String user_id;
	String user_password;

	public LoginVo() {
	}
	public String getUser_id() {
		return user_id;
	}
	@Override
	public String toString() {
		return "LoginVo [user_id=" + user_id + ", user_password=" + user_password + "]";
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public LoginVo(String user_id, String user_password) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
}
