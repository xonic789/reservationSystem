package com.proj.yollowa.model.entity.mypage;

import java.sql.Date;

public class LReservInfoVo {
	private int lReservInfo_number;
	private int lReservInfo_userNumber;
	private int lReservInfo_acticleNumber;
	private int lReservInfo_roomNumber;
	private Date lReservInfo_checkIn;
	private Date lReservInfo_checkOut;
	private String lReservInfo_phoneNumber;
	private Date lReservInfo_reservDate;
	private int lReservInfo_payment;
	private int lReservInfo_reservStatus;
	private int lReservInfo_cartStatus;
	
	public LReservInfoVo() {
		
	}
	public int getlReservInfo_number() {
		return lReservInfo_number;
	}
	public void setlReservInfo_number(int lReservInfo_number) {
		this.lReservInfo_number = lReservInfo_number;
	}
	public int getlReservInfo_userNumber() {
		return lReservInfo_userNumber;
	}
	public void setlReservInfo_userNumber(int lReservInfo_userNumber) {
		this.lReservInfo_userNumber = lReservInfo_userNumber;
	}
	public int getlReservInfo_acticleNumber() {
		return lReservInfo_acticleNumber;
	}
	public void setlReservInfo_acticleNumber(int lReservInfo_acticleNumber) {
		this.lReservInfo_acticleNumber = lReservInfo_acticleNumber;
	}
	public int getlReservInfo_roomNumber() {
		return lReservInfo_roomNumber;
	}
	public void setlReservInfo_roomNumber(int lReservInfo_roomNumber) {
		this.lReservInfo_roomNumber = lReservInfo_roomNumber;
	}
	public Date getlReservInfo_checkIn() {
		return lReservInfo_checkIn;
	}
	public void setlReservInfo_checkIn(Date lReservInfo_checkIn) {
		this.lReservInfo_checkIn = lReservInfo_checkIn;
	}
	public Date getlReservInfo_checkOut() {
		return lReservInfo_checkOut;
	}
	public void setlReservInfo_checkOut(Date lReservInfo_checkOut) {
		this.lReservInfo_checkOut = lReservInfo_checkOut;
	}
	public String getlReservInfo_phoneNumber() {
		return lReservInfo_phoneNumber;
	}
	public void setlReservInfo_phoneNumber(String lReservInfo_phoneNumber) {
		this.lReservInfo_phoneNumber = lReservInfo_phoneNumber;
	}
	public Date getlReservInfo_reservDate() {
		return lReservInfo_reservDate;
	}
	public void setlReservInfo_reservDate(Date lReservInfo_reservDate) {
		this.lReservInfo_reservDate = lReservInfo_reservDate;
	}
	public int getlReservInfo_payment() {
		return lReservInfo_payment;
	}
	public void setlReservInfo_payment(int lReservInfo_payment) {
		this.lReservInfo_payment = lReservInfo_payment;
	}
	public int getlReservInfo_reservStatus() {
		return lReservInfo_reservStatus;
	}
	public void setlReservInfo_reservStatus(int lReservInfo_reservStatus) {
		this.lReservInfo_reservStatus = lReservInfo_reservStatus;
	}
	public int getlReservInfo_cartStatus() {
		return lReservInfo_cartStatus;
	}
	public void setlReservInfo_cartStatus(int lReservInfo_cartStatus) {
		this.lReservInfo_cartStatus = lReservInfo_cartStatus;
	}
	public LReservInfoVo(int lReservInfo_number, int lReservInfo_userNumber, int lReservInfo_acticleNumber,
			int lReservInfo_roomNumber, Date lReservInfo_checkIn, Date lReservInfo_checkOut,
			String lReservInfo_phoneNumber, Date lReservInfo_reservDate, int lReservInfo_payment,
			int lReservInfo_reservStatus, int lReservInfo_cartStatus) {
		super();
		this.lReservInfo_number = lReservInfo_number;
		this.lReservInfo_userNumber = lReservInfo_userNumber;
		this.lReservInfo_acticleNumber = lReservInfo_acticleNumber;
		this.lReservInfo_roomNumber = lReservInfo_roomNumber;
		this.lReservInfo_checkIn = lReservInfo_checkIn;
		this.lReservInfo_checkOut = lReservInfo_checkOut;
		this.lReservInfo_phoneNumber = lReservInfo_phoneNumber;
		this.lReservInfo_reservDate = lReservInfo_reservDate;
		this.lReservInfo_payment = lReservInfo_payment;
		this.lReservInfo_reservStatus = lReservInfo_reservStatus;
		this.lReservInfo_cartStatus = lReservInfo_cartStatus;
	}
	@Override
	public String toString() {
		return "LReservInfo [lReservInfo_number=" + lReservInfo_number + ", lReservInfo_userNumber="
				+ lReservInfo_userNumber + ", lReservInfo_acticleNumber=" + lReservInfo_acticleNumber
				+ ", lReservInfo_roomNumber=" + lReservInfo_roomNumber + ", lReservInfo_checkIn=" + lReservInfo_checkIn
				+ ", lReservInfo_checkOut=" + lReservInfo_checkOut + ", lReservInfo_phoneNumber="
				+ lReservInfo_phoneNumber + ", lReservInfo_reservDate=" + lReservInfo_reservDate
				+ ", lReservInfo_payment=" + lReservInfo_payment + ", lReservInfo_reservStatus="
				+ lReservInfo_reservStatus + ", lReservInfo_cartStatus=" + lReservInfo_cartStatus + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + lReservInfo_acticleNumber;
		result = prime * result + lReservInfo_cartStatus;
		result = prime * result + ((lReservInfo_checkIn == null) ? 0 : lReservInfo_checkIn.hashCode());
		result = prime * result + ((lReservInfo_checkOut == null) ? 0 : lReservInfo_checkOut.hashCode());
		result = prime * result + lReservInfo_number;
		result = prime * result + lReservInfo_payment;
		result = prime * result + ((lReservInfo_phoneNumber == null) ? 0 : lReservInfo_phoneNumber.hashCode());
		result = prime * result + ((lReservInfo_reservDate == null) ? 0 : lReservInfo_reservDate.hashCode());
		result = prime * result + lReservInfo_reservStatus;
		result = prime * result + lReservInfo_roomNumber;
		result = prime * result + lReservInfo_userNumber;
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
		LReservInfoVo other = (LReservInfoVo) obj;
		if (lReservInfo_acticleNumber != other.lReservInfo_acticleNumber)
			return false;
		if (lReservInfo_cartStatus != other.lReservInfo_cartStatus)
			return false;
		if (lReservInfo_checkIn == null) {
			if (other.lReservInfo_checkIn != null)
				return false;
		} else if (!lReservInfo_checkIn.equals(other.lReservInfo_checkIn))
			return false;
		if (lReservInfo_checkOut == null) {
			if (other.lReservInfo_checkOut != null)
				return false;
		} else if (!lReservInfo_checkOut.equals(other.lReservInfo_checkOut))
			return false;
		if (lReservInfo_number != other.lReservInfo_number)
			return false;
		if (lReservInfo_payment != other.lReservInfo_payment)
			return false;
		if (lReservInfo_phoneNumber == null) {
			if (other.lReservInfo_phoneNumber != null)
				return false;
		} else if (!lReservInfo_phoneNumber.equals(other.lReservInfo_phoneNumber))
			return false;
		if (lReservInfo_reservDate == null) {
			if (other.lReservInfo_reservDate != null)
				return false;
		} else if (!lReservInfo_reservDate.equals(other.lReservInfo_reservDate))
			return false;
		if (lReservInfo_reservStatus != other.lReservInfo_reservStatus)
			return false;
		if (lReservInfo_roomNumber != other.lReservInfo_roomNumber)
			return false;
		if (lReservInfo_userNumber != other.lReservInfo_userNumber)
			return false;
		return true;
	}
	
	
}
