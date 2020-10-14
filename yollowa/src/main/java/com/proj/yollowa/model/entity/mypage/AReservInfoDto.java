package com.proj.yollowa.model.entity.mypage;

import java.sql.Date;

public class AReservInfoDto {
	
	private int aReservInfo_number;
	private int aReservInfo_userNumber;
	private int aReservInfo_articleNumber;
	private int aReservInfo_optionNumber;
	private int aReservInfo_amount;
	private Date aReservInfo_checkIn;
	private Date aReservInfo_checkOut;
	private String aReservInfo_phoneNumber;
	private Date aReservInfo_reservDate;
	private int aReservInfo_unitPrice;
	private int aReservInfo_payment;
	private int aReservInfo_reservStatus;
	private int aReservInfo_cartStatus;
	private int activity_number;
	private String activity_title;
	private String activity_location;
	private int activityOption_optionNumber;
	private int activityOption_articleNumber;
	private String activityOption_name;
	private int activityOption_price;
	private String activityOption_subName;
	
	public AReservInfoDto() {
	}
	
	
	
	public AReservInfoDto(int aReservInfo_number, int aReservInfo_userNumber, int aReservInfo_articleNumber,
			int aReservInfo_optionNumber, int aReservInfo_amount, Date aReservInfo_checkIn, Date aReservInfo_checkOut,
			String aReservInfo_phoneNumber, Date aReservInfo_reservDate, int aReservInfo_unitPrice,
			int aReservInfo_payment, int aReservInfo_reservStatus, int aReservInfo_cartStatus, int activity_number,
			String activity_title, String activity_location, int activityOption_optionNumber,
			int activityOption_articleNumber, String activityOption_name, int activityOption_price,
			String activityOption_subName) {
		super();
		this.aReservInfo_number = aReservInfo_number;
		this.aReservInfo_userNumber = aReservInfo_userNumber;
		this.aReservInfo_articleNumber = aReservInfo_articleNumber;
		this.aReservInfo_optionNumber = aReservInfo_optionNumber;
		this.aReservInfo_amount = aReservInfo_amount;
		this.aReservInfo_checkIn = aReservInfo_checkIn;
		this.aReservInfo_checkOut = aReservInfo_checkOut;
		this.aReservInfo_phoneNumber = aReservInfo_phoneNumber;
		this.aReservInfo_reservDate = aReservInfo_reservDate;
		this.aReservInfo_unitPrice = aReservInfo_unitPrice;
		this.aReservInfo_payment = aReservInfo_payment;
		this.aReservInfo_reservStatus = aReservInfo_reservStatus;
		this.aReservInfo_cartStatus = aReservInfo_cartStatus;
		this.activity_number = activity_number;
		this.activity_title = activity_title;
		this.activity_location = activity_location;
		this.activityOption_optionNumber = activityOption_optionNumber;
		this.activityOption_articleNumber = activityOption_articleNumber;
		this.activityOption_name = activityOption_name;
		this.activityOption_price = activityOption_price;
		this.activityOption_subName = activityOption_subName;
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


	public int getActivityOption_price() {
		return activityOption_price;
	}


	public void setActivityOption_price(int activityOption_price) {
		this.activityOption_price = activityOption_price;
	}


	public String getActivityOption_subName() {
		return activityOption_subName;
	}


	public void setActivityOption_subName(String activityOption_subName) {
		this.activityOption_subName = activityOption_subName;
	}


	
	
	
	public int getActivity_number() {
		return activity_number;
	}


	public void setActivity_number(int activity_number) {
		this.activity_number = activity_number;
	}


	public String getActivity_title() {
		return activity_title;
	}


	public void setActivity_title(String activity_title) {
		this.activity_title = activity_title;
	}


	public String getActivity_location() {
		return activity_location;
	}


	public void setActivity_location(String activity_location) {
		this.activity_location = activity_location;
	}




	public int getaReservInfo_optionNumber() {
		return aReservInfo_optionNumber;
	}

	public void setaReservInfo_optionNumber(int aReservInfo_optionNumber) {
		this.aReservInfo_optionNumber = aReservInfo_optionNumber;
	}

	public int getaReservInfo_amount() {
		return aReservInfo_amount;
	}

	public void setaReservInfo_amount(int aReservInfo_amount) {
		this.aReservInfo_amount = aReservInfo_amount;
	}

	public int getaReservInfo_unitPrice() {
		return aReservInfo_unitPrice;
	}

	public void setaReservInfo_unitPrice(int aReservInfo_unitPrice) {
		this.aReservInfo_unitPrice = aReservInfo_unitPrice;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aReservInfo_amount;
		result = prime * result + aReservInfo_articleNumber;
		result = prime * result + aReservInfo_cartStatus;
		result = prime * result + ((aReservInfo_checkIn == null) ? 0 : aReservInfo_checkIn.hashCode());
		result = prime * result + ((aReservInfo_checkOut == null) ? 0 : aReservInfo_checkOut.hashCode());
		result = prime * result + aReservInfo_number;
		result = prime * result + aReservInfo_optionNumber;
		result = prime * result + aReservInfo_payment;
		result = prime * result + ((aReservInfo_phoneNumber == null) ? 0 : aReservInfo_phoneNumber.hashCode());
		result = prime * result + ((aReservInfo_reservDate == null) ? 0 : aReservInfo_reservDate.hashCode());
		result = prime * result + aReservInfo_reservStatus;
		result = prime * result + aReservInfo_unitPrice;
		result = prime * result + aReservInfo_userNumber;
		result = prime * result + activityOption_articleNumber;
		result = prime * result + ((activityOption_name == null) ? 0 : activityOption_name.hashCode());
		result = prime * result + activityOption_optionNumber;
		result = prime * result + activityOption_price;
		result = prime * result + ((activityOption_subName == null) ? 0 : activityOption_subName.hashCode());
		result = prime * result + ((activity_location == null) ? 0 : activity_location.hashCode());
		result = prime * result + activity_number;
		result = prime * result + ((activity_title == null) ? 0 : activity_title.hashCode());
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
		AReservInfoDto other = (AReservInfoDto) obj;
		if (aReservInfo_amount != other.aReservInfo_amount)
			return false;
		if (aReservInfo_articleNumber != other.aReservInfo_articleNumber)
			return false;
		if (aReservInfo_cartStatus != other.aReservInfo_cartStatus)
			return false;
		if (aReservInfo_checkIn == null) {
			if (other.aReservInfo_checkIn != null)
				return false;
		} else if (!aReservInfo_checkIn.equals(other.aReservInfo_checkIn))
			return false;
		if (aReservInfo_checkOut == null) {
			if (other.aReservInfo_checkOut != null)
				return false;
		} else if (!aReservInfo_checkOut.equals(other.aReservInfo_checkOut))
			return false;
		if (aReservInfo_number != other.aReservInfo_number)
			return false;
		if (aReservInfo_optionNumber != other.aReservInfo_optionNumber)
			return false;
		if (aReservInfo_payment != other.aReservInfo_payment)
			return false;
		if (aReservInfo_phoneNumber == null) {
			if (other.aReservInfo_phoneNumber != null)
				return false;
		} else if (!aReservInfo_phoneNumber.equals(other.aReservInfo_phoneNumber))
			return false;
		if (aReservInfo_reservDate == null) {
			if (other.aReservInfo_reservDate != null)
				return false;
		} else if (!aReservInfo_reservDate.equals(other.aReservInfo_reservDate))
			return false;
		if (aReservInfo_reservStatus != other.aReservInfo_reservStatus)
			return false;
		if (aReservInfo_unitPrice != other.aReservInfo_unitPrice)
			return false;
		if (aReservInfo_userNumber != other.aReservInfo_userNumber)
			return false;
		if (activityOption_articleNumber != other.activityOption_articleNumber)
			return false;
		if (activityOption_name == null) {
			if (other.activityOption_name != null)
				return false;
		} else if (!activityOption_name.equals(other.activityOption_name))
			return false;
		if (activityOption_optionNumber != other.activityOption_optionNumber)
			return false;
		if (activityOption_price != other.activityOption_price)
			return false;
		if (activityOption_subName == null) {
			if (other.activityOption_subName != null)
				return false;
		} else if (!activityOption_subName.equals(other.activityOption_subName))
			return false;
		if (activity_location == null) {
			if (other.activity_location != null)
				return false;
		} else if (!activity_location.equals(other.activity_location))
			return false;
		if (activity_number != other.activity_number)
			return false;
		if (activity_title == null) {
			if (other.activity_title != null)
				return false;
		} else if (!activity_title.equals(other.activity_title))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "AReservInfoDto [aReservInfo_number=" + aReservInfo_number + ", aReservInfo_userNumber="
				+ aReservInfo_userNumber + ", aReservInfo_articleNumber=" + aReservInfo_articleNumber
				+ ", aReservInfo_optionNumber=" + aReservInfo_optionNumber + ", aReservInfo_amount="
				+ aReservInfo_amount + ", aReservInfo_checkIn=" + aReservInfo_checkIn + ", aReservInfo_checkOut="
				+ aReservInfo_checkOut + ", aReservInfo_phoneNumber=" + aReservInfo_phoneNumber
				+ ", aReservInfo_reservDate=" + aReservInfo_reservDate + ", aReservInfo_unitPrice="
				+ aReservInfo_unitPrice + ", aReservInfo_payment=" + aReservInfo_payment + ", aReservInfo_reservStatus="
				+ aReservInfo_reservStatus + ", aReservInfo_cartStatus=" + aReservInfo_cartStatus + ", activity_number="
				+ activity_number + ", activity_title=" + activity_title + ", activity_location=" + activity_location
				+ ", activityOption_optionNumber=" + activityOption_optionNumber + ", activityOption_articleNumber="
				+ activityOption_articleNumber + ", activityOption_name=" + activityOption_name
				+ ", activityOption_price=" + activityOption_price + ", activityOption_subName="
				+ activityOption_subName + "]";
	}
	public int getaReservInfo_number() {
		return aReservInfo_number;
	}
	public void setaReservInfo_number(int aReservInfo_number) {
		this.aReservInfo_number = aReservInfo_number;
	}
	public int getaReservInfo_userNumber() {
		return aReservInfo_userNumber;
	}
	public void setaReservInfo_userNumber(int aReservInfo_userNumber) {
		this.aReservInfo_userNumber = aReservInfo_userNumber;
	}
	public int getaReservInfo_articleNumber() {
		return aReservInfo_articleNumber;
	}
	public void setaReservInfo_articleNumber(int aReservInfo_articleNumber) {
		this.aReservInfo_articleNumber = aReservInfo_articleNumber;
	}
	public Date getaReservInfo_checkIn() {
		return aReservInfo_checkIn;
	}
	public void setaReservInfo_checkIn(Date aReservInfo_checkIn) {
		this.aReservInfo_checkIn = aReservInfo_checkIn;
	}
	public Date getaReservInfo_checkOut() {
		return aReservInfo_checkOut;
	}
	public void setaReservInfo_checkOut(Date aReservInfo_checkOut) {
		this.aReservInfo_checkOut = aReservInfo_checkOut;
	}
	public String getaReservInfo_phoneNumber() {
		return aReservInfo_phoneNumber;
	}
	public void setaReservInfo_phoneNumber(String aReservInfo_phoneNumber) {
		this.aReservInfo_phoneNumber = aReservInfo_phoneNumber;
	}
	public Date getaReservInfo_reservDate() {
		return aReservInfo_reservDate;
	}
	public void setaReservInfo_reservDate(Date aReservInfo_reservDate) {
		this.aReservInfo_reservDate = aReservInfo_reservDate;
	}
	public int getaReservInfo_payment() {
		return aReservInfo_payment;
	}
	public void setaReservInfo_payment(int aReservInfo_payment) {
		this.aReservInfo_payment = aReservInfo_payment;
	}
	public int getaReservInfo_reservStatus() {
		return aReservInfo_reservStatus;
	}
	public void setaReservInfo_reservStatus(int aReservInfo_reservStatus) {
		this.aReservInfo_reservStatus = aReservInfo_reservStatus;
	}
	public int getaReservInfo_cartStatus() {
		return aReservInfo_cartStatus;
	}
	public void setaReservInfo_cartStatus(int aReservInfo_cartStatus) {
		this.aReservInfo_cartStatus = aReservInfo_cartStatus;
	}
	
}
