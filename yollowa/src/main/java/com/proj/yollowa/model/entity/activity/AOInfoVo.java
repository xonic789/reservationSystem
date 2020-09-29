package com.proj.yollowa.model.entity.activity;

public class AOInfoVo {

	private int AOInfo_articleNumber;
	private int AOInfo_optionNumber;
	private String AOInfo_name;
	private int AOInfo_price;
	
	public AOInfoVo() {
	}

	public int getAOInfo_articleNumber() {
		return AOInfo_articleNumber;
	}

	public void setAOInfo_articleNumber(int aOInfo_articleNumber) {
		AOInfo_articleNumber = aOInfo_articleNumber;
	}

	public int getAOInfo_optionNumber() {
		return AOInfo_optionNumber;
	}

	public void setAOInfo_optionNumber(int aOInfo_optionNumber) {
		AOInfo_optionNumber = aOInfo_optionNumber;
	}

	public String getAOInfo_name() {
		return AOInfo_name;
	}

	public void setAOInfo_name(String aOInfo_name) {
		AOInfo_name = aOInfo_name;
	}

	public int getAOInfo_price() {
		return AOInfo_price;
	}

	public void setAOInfo_price(int aOInfo_price) {
		AOInfo_price = aOInfo_price;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + AOInfo_articleNumber;
		result = prime * result + ((AOInfo_name == null) ? 0 : AOInfo_name.hashCode());
		result = prime * result + AOInfo_optionNumber;
		result = prime * result + AOInfo_price;
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
		AOInfoVo other = (AOInfoVo) obj;
		if (AOInfo_articleNumber != other.AOInfo_articleNumber)
			return false;
		if (AOInfo_name == null) {
			if (other.AOInfo_name != null)
				return false;
		} else if (!AOInfo_name.equals(other.AOInfo_name))
			return false;
		if (AOInfo_optionNumber != other.AOInfo_optionNumber)
			return false;
		if (AOInfo_price != other.AOInfo_price)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "AOInfoVo [AOInfo_articleNumber=" + AOInfo_articleNumber + ", AOInfo_optionNumber=" + AOInfo_optionNumber
				+ ", AOInfo_name=" + AOInfo_name + ", AOInfo_price=" + AOInfo_price + "]";
	}

	public AOInfoVo(int aOInfo_articleNumber, int aOInfo_optionNumber, String aOInfo_name, int aOInfo_price) {
		super();
		AOInfo_articleNumber = aOInfo_articleNumber;
		AOInfo_optionNumber = aOInfo_optionNumber;
		AOInfo_name = aOInfo_name;
		AOInfo_price = aOInfo_price;
	}
	
	
	
	
}
