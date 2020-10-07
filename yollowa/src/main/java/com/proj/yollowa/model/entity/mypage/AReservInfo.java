package com.proj.yollowa.model.entity.mypage;

import java.sql.Date;

public class AReservInfo {
	private int aReservInfo_number;
	private int aReservInfo_userNumber;
	private int aReservInfo_articleNumber;
	private Date aReservInfo_checkIn;
	private Date aReservInfo_checkOut;
	private String aReservInfo_phoneNumber;
	
	public AReservInfo() {
	}
	
	public AReservInfo(int aReservInfo_number, int aReservInfo_userNumber, int aReservInfo_articleNumber,
			Date aReservInfo_checkIn, Date aReservInfo_checkOut, String aReservInfo_phoneNumber,
			Date aReservInfo_reservDate, int aReservInfo_payment, int aReservInfo_reservStatus,
			int aReservInfo_cartStatus) {
		super();
		this.aReservInfo_number = aReservInfo_number;
		this.aReservInfo_userNumber = aReservInfo_userNumber;
		this.aReservInfo_articleNumber = aReservInfo_articleNumber;
		this.aReservInfo_checkIn = aReservInfo_checkIn;
		this.aReservInfo_checkOut = aReservInfo_checkOut;
		this.aReservInfo_phoneNumber = aReservInfo_phoneNumber;
		this.aReservInfo_reservDate = aReservInfo_reservDate;
		this.aReservInfo_payment = aReservInfo_payment;
		this.aReservInfo_reservStatus = aReservInfo_reservStatus;
		this.aReservInfo_cartStatus = aReservInfo_cartStatus;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aReservInfo_articleNumber;
		result = prime * result + aReservInfo_cartStatus;
		result = prime * result + ((aReservInfo_checkIn == null) ? 0 : aReservInfo_checkIn.hashCode());
		result = prime * result + ((aReservInfo_checkOut == null) ? 0 : aReservInfo_checkOut.hashCode());
		result = prime * result + aReservInfo_number;
		result = prime * result + aReservInfo_payment;
		result = prime * result + ((aReservInfo_phoneNumber == null) ? 0 : aReservInfo_phoneNumber.hashCode());
		result = prime * result + ((aReservInfo_reservDate == null) ? 0 : aReservInfo_reservDate.hashCode());
		result = prime * result + aReservInfo_reservStatus;
		result = prime * result + aReservInfo_userNumber;
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
		AReservInfo other = (AReservInfo) obj;
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
		if (aReservInfo_userNumber != other.aReservInfo_userNumber)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "AReservInfo [aReservInfo_number=" + aReservInfo_number + ", aReservInfo_userNumber="
				+ aReservInfo_userNumber + ", aReservInfo_articleNumber=" + aReservInfo_articleNumber
				+ ", aReservInfo_checkIn=" + aReservInfo_checkIn + ", aReservInfo_checkOut=" + aReservInfo_checkOut
				+ ", aReservInfo_phoneNumber=" + aReservInfo_phoneNumber + ", aReservInfo_reservDate="
				+ aReservInfo_reservDate + ", aReservInfo_payment=" + aReservInfo_payment
				+ ", aReservInfo_reservStatus=" + aReservInfo_reservStatus + ", aReservInfo_cartStatus="
				+ aReservInfo_cartStatus + "]";
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
	private Date aReservInfo_reservDate;
	private int aReservInfo_payment;
	private int aReservInfo_reservStatus;
	private int aReservInfo_cartStatus;
}
