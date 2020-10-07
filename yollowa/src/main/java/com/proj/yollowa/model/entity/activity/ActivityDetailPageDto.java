package com.proj.yollowa.model.entity.activity;

public class ActivityDetailPageDto {

	private int activity_number;
	
	private int activityOption_optionNumber;
	private int activityOption_articleNumber;
	private String activityOption_name;
	private int activityOption_max;
	
	private int AOInfo_articleNumber;
	private int AOInfo_optionNumber;
	private String AOInfo_name;
	private int AOInfo_price;
	
	public ActivityDetailPageDto() {
	}

	public int getActivity_number() {
		return activity_number;
	}

	public void setActivity_number(int activity_number) {
		this.activity_number = activity_number;
	}

	public int getActivityOption_optionNumber() {
		return activityOption_optionNumber;
	}

	public void setActivityOption_optionNumber(int activityOption_optionNumber) {
		this.activityOption_optionNumber = activityOption_optionNumber;
	}

	public int getActivityOption_articleNumber() {
		return activityOption_articleNumber;
	}

	public void setActivityOption_articleNumber(int activityOption_articleNumber) {
		this.activityOption_articleNumber = activityOption_articleNumber;
	}

	public String getActivityOption_name() {
		return activityOption_name;
	}

	public void setActivityOption_name(String activityOption_name) {
		this.activityOption_name = activityOption_name;
	}

	public int getActivityOption_max() {
		return activityOption_max;
	}

	public void setActivityOption_max(int activityOption_max) {
		this.activityOption_max = activityOption_max;
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
		result = prime * result + activityOption_articleNumber;
		result = prime * result + activityOption_max;
		result = prime * result + ((activityOption_name == null) ? 0 : activityOption_name.hashCode());
		result = prime * result + activityOption_optionNumber;
		result = prime * result + activity_number;
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
		ActivityDetailPageDto other = (ActivityDetailPageDto) obj;
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
		if (activityOption_articleNumber != other.activityOption_articleNumber)
			return false;
		if (activityOption_max != other.activityOption_max)
			return false;
		if (activityOption_name == null) {
			if (other.activityOption_name != null)
				return false;
		} else if (!activityOption_name.equals(other.activityOption_name))
			return false;
		if (activityOption_optionNumber != other.activityOption_optionNumber)
			return false;
		if (activity_number != other.activity_number)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ActivityDetailPageDto [activity_number=" + activity_number + ", activityOption_optionNumber="
				+ activityOption_optionNumber + ", activityOption_articleNumber=" + activityOption_articleNumber
				+ ", activityOption_name=" + activityOption_name + ", activityOption_max=" + activityOption_max
				+ ", AOInfo_articleNumber=" + AOInfo_articleNumber + ", AOInfo_optionNumber=" + AOInfo_optionNumber
				+ ", AOInfo_name=" + AOInfo_name + ", AOInfo_price=" + AOInfo_price + "]";
	}

	public ActivityDetailPageDto(int activity_number, int activityOption_optionNumber, int activityOption_articleNumber,
			String activityOption_name, int activityOption_max, int aOInfo_articleNumber, int aOInfo_optionNumber,
			String aOInfo_name, int aOInfo_price) {
		super();
		this.activity_number = activity_number;
		this.activityOption_optionNumber = activityOption_optionNumber;
		this.activityOption_articleNumber = activityOption_articleNumber;
		this.activityOption_name = activityOption_name;
		this.activityOption_max = activityOption_max;
		AOInfo_articleNumber = aOInfo_articleNumber;
		AOInfo_optionNumber = aOInfo_optionNumber;
		AOInfo_name = aOInfo_name;
		AOInfo_price = aOInfo_price;
	}
	
	//////
	
	
	
}
