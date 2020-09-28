package com.proj.yollowa.model.entity;

public class ManagerVo {
	private String manager_number;
	private String manager_id;
	private String manager_password;
	private String manager_level;
	
	public ManagerVo() {
	}
	public ManagerVo(String manager_number, String manager_id, String manager_password, String manager_level) {
		super();
		this.manager_number = manager_number;
		this.manager_id = manager_id;
		this.manager_password = manager_password;
		this.manager_level = manager_level;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((manager_id == null) ? 0 : manager_id.hashCode());
		result = prime * result + ((manager_level == null) ? 0 : manager_level.hashCode());
		result = prime * result + ((manager_number == null) ? 0 : manager_number.hashCode());
		result = prime * result + ((manager_password == null) ? 0 : manager_password.hashCode());
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
		ManagerVo other = (ManagerVo) obj;
		if (manager_id == null) {
			if (other.manager_id != null)
				return false;
		} else if (!manager_id.equals(other.manager_id))
			return false;
		if (manager_level == null) {
			if (other.manager_level != null)
				return false;
		} else if (!manager_level.equals(other.manager_level))
			return false;
		if (manager_number == null) {
			if (other.manager_number != null)
				return false;
		} else if (!manager_number.equals(other.manager_number))
			return false;
		if (manager_password == null) {
			if (other.manager_password != null)
				return false;
		} else if (!manager_password.equals(other.manager_password))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ManagerVo [manager_number=" + manager_number + ", manager_id=" + manager_id + ", manager_password="
				+ manager_password + ", manager_level=" + manager_level + "]";
	}
	public String getManager_number() {
		return manager_number;
	}
	public void setManager_number(String manager_number) {
		this.manager_number = manager_number;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_password() {
		return manager_password;
	}
	public void setManager_password(String manager_password) {
		this.manager_password = manager_password;
	}
	public String getManager_level() {
		return manager_level;
	}
	public void setManager_level(String manager_level) {
		this.manager_level = manager_level;
	}

	
}
