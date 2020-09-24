package com.yollowa.model.entity;

public class UserVo {
	int user_number;
	String user_nickName;
	String user_name;
	String user_birthday;
	String user_gender;
	String user_phoneNumber;
	String user_address;
	String user_id;
	String user_password;
	String user_email;
	String user_likes;
	String user_wishList;
	int user_companyNumber;
	String user_companyName;
	int user_level;
	public UserVo() {
	}
	public String getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public int getUser_number() {
		return user_number;
	}
	public void setUser_number(int user_number) {
		this.user_number = user_number;
	}
	public String getUser_nickName() {
		return user_nickName;
	}
	public void setUser_nickName(String user_nickName) {
		this.user_nickName = user_nickName;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phoneNumber() {
		return user_phoneNumber;
	}
	public void setUser_phoneNumber(String user_phoneNumber) {
		this.user_phoneNumber = user_phoneNumber;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_likes() {
		return user_likes;
	}
	public void setUser_likes(String user_likes) {
		this.user_likes = user_likes;
	}
	public String getUser_wishList() {
		return user_wishList;
	}
	public void setUser_wishList(String user_wishList) {
		this.user_wishList = user_wishList;
	}
	public int getUser_companyNumber() {
		return user_companyNumber;
	}
	public void setUser_companyNumber(int user_companyNumber) {
		this.user_companyNumber = user_companyNumber;
	}
	public String getUser_companyName() {
		return user_companyName;
	}
	public void setUser_companyName(String user_companyName) {
		this.user_companyName = user_companyName;
	}
	public int getUser_level() {
		return user_level;
	}
	@Override
	public String toString() {
		return "UserVo [user_number=" + user_number + ", user_nickName=" + user_nickName + ", user_name=" + user_name
				+ ", user_birthday=" + user_birthday + ", user_gender=" + user_gender + ", user_phoneNumber="
				+ user_phoneNumber + ", user_address=" + user_address + ", user_id=" + user_id + ", user_password="
				+ user_password + ", user_email=" + user_email + ", user_likes=" + user_likes + ", user_wishList="
				+ user_wishList + ", user_companyNumber=" + user_companyNumber + ", user_companyName="
				+ user_companyName + ", user_level=" + user_level + "]";
	}
	public UserVo(int user_number, String user_nickName, String user_name, String user_birthday, String user_gender,
			String user_phoneNumber, String user_address, String user_id, String user_password, String user_email,
			String user_likes, String user_wishList, int user_companyNumber, String user_companyName, int user_level) {
		super();
		this.user_number = user_number;
		this.user_nickName = user_nickName;
		this.user_name = user_name;
		this.user_birthday = user_birthday;
		this.user_gender = user_gender;
		this.user_phoneNumber = user_phoneNumber;
		this.user_address = user_address;
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_email = user_email;
		this.user_likes = user_likes;
		this.user_wishList = user_wishList;
		this.user_companyNumber = user_companyNumber;
		this.user_companyName = user_companyName;
		this.user_level = user_level;
	}
	public void setUser_level(int user_level) {
		this.user_level = user_level;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((user_address == null) ? 0 : user_address.hashCode());
		result = prime * result + ((user_birthday == null) ? 0 : user_birthday.hashCode());
		result = prime * result + ((user_companyName == null) ? 0 : user_companyName.hashCode());
		result = prime * result + user_companyNumber;
		result = prime * result + ((user_email == null) ? 0 : user_email.hashCode());
		result = prime * result + ((user_gender == null) ? 0 : user_gender.hashCode());
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
		result = prime * result + user_level;
		result = prime * result + ((user_likes == null) ? 0 : user_likes.hashCode());
		result = prime * result + ((user_name == null) ? 0 : user_name.hashCode());
		result = prime * result + ((user_nickName == null) ? 0 : user_nickName.hashCode());
		result = prime * result + user_number;
		result = prime * result + ((user_password == null) ? 0 : user_password.hashCode());
		result = prime * result + ((user_phoneNumber == null) ? 0 : user_phoneNumber.hashCode());
		result = prime * result + ((user_wishList == null) ? 0 : user_wishList.hashCode());
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
		UserVo other = (UserVo) obj;
		if (user_address == null) {
			if (other.user_address != null)
				return false;
		} else if (!user_address.equals(other.user_address))
			return false;
		if (user_birthday == null) {
			if (other.user_birthday != null)
				return false;
		} else if (!user_birthday.equals(other.user_birthday))
			return false;
		if (user_companyName == null) {
			if (other.user_companyName != null)
				return false;
		} else if (!user_companyName.equals(other.user_companyName))
			return false;
		if (user_companyNumber != other.user_companyNumber)
			return false;
		if (user_email == null) {
			if (other.user_email != null)
				return false;
		} else if (!user_email.equals(other.user_email))
			return false;
		if (user_gender == null) {
			if (other.user_gender != null)
				return false;
		} else if (!user_gender.equals(other.user_gender))
			return false;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		if (user_level != other.user_level)
			return false;
		if (user_likes == null) {
			if (other.user_likes != null)
				return false;
		} else if (!user_likes.equals(other.user_likes))
			return false;
		if (user_name == null) {
			if (other.user_name != null)
				return false;
		} else if (!user_name.equals(other.user_name))
			return false;
		if (user_nickName == null) {
			if (other.user_nickName != null)
				return false;
		} else if (!user_nickName.equals(other.user_nickName))
			return false;
		if (user_number != other.user_number)
			return false;
		if (user_password == null) {
			if (other.user_password != null)
				return false;
		} else if (!user_password.equals(other.user_password))
			return false;
		if (user_phoneNumber == null) {
			if (other.user_phoneNumber != null)
				return false;
		} else if (!user_phoneNumber.equals(other.user_phoneNumber))
			return false;
		if (user_wishList == null) {
			if (other.user_wishList != null)
				return false;
		} else if (!user_wishList.equals(other.user_wishList))
			return false;
		return true;
	}
}
