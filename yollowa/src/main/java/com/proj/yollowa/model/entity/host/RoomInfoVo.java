package com.proj.yollowa.model.entity.host;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class RoomInfoVo {
	private int roomInfo_roomNumber;
	private int roomInfo_articleNumber;
	private String roomInfo_name;
	private int roomInfo_peakPrice;
	private int roomInfo_offPeakPrice;
	private Date roomInfo_peakStartDate;
	private Date roomInfo_peakEndDate;
	private int roomInfo_soldCondition;
	private int roomInfo_minPeople;
	private int roomInfo_maxPeople;
	private int roomInfo_extraPrice;
	private String roomInfo_img;
	private MultipartFile[] roomImg;
	
	public RoomInfoVo() {
		// TODO Auto-generated constructor stub
	}

	public RoomInfoVo(int roomInfo_roomNumber, int roomInfo_articleNumber, String roomInfo_name, int roomInfo_peakPrice,
			int roomInfo_offPeakPrice, Date roomInfo_peakStartDate, Date roomInfo_peakEndDate,
			int roomInfo_soldCondition, int roomInfo_minPeople, int roomInfo_maxPeople, int roomInfo_extraPrice,
			String roomInfo_img, MultipartFile[] roomImg) {
		super();
		this.roomInfo_roomNumber = roomInfo_roomNumber;
		this.roomInfo_articleNumber = roomInfo_articleNumber;
		this.roomInfo_name = roomInfo_name;
		this.roomInfo_peakPrice = roomInfo_peakPrice;
		this.roomInfo_offPeakPrice = roomInfo_offPeakPrice;
		this.roomInfo_peakStartDate = roomInfo_peakStartDate;
		this.roomInfo_peakEndDate = roomInfo_peakEndDate;
		this.roomInfo_soldCondition = roomInfo_soldCondition;
		this.roomInfo_minPeople = roomInfo_minPeople;
		this.roomInfo_maxPeople = roomInfo_maxPeople;
		this.roomInfo_extraPrice = roomInfo_extraPrice;
		this.roomInfo_img = roomInfo_img;
		this.roomImg = roomImg;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(roomImg);
		result = prime * result + roomInfo_articleNumber;
		result = prime * result + roomInfo_extraPrice;
		result = prime * result + ((roomInfo_img == null) ? 0 : roomInfo_img.hashCode());
		result = prime * result + roomInfo_maxPeople;
		result = prime * result + roomInfo_minPeople;
		result = prime * result + ((roomInfo_name == null) ? 0 : roomInfo_name.hashCode());
		result = prime * result + roomInfo_offPeakPrice;
		result = prime * result + ((roomInfo_peakEndDate == null) ? 0 : roomInfo_peakEndDate.hashCode());
		result = prime * result + roomInfo_peakPrice;
		result = prime * result + ((roomInfo_peakStartDate == null) ? 0 : roomInfo_peakStartDate.hashCode());
		result = prime * result + roomInfo_roomNumber;
		result = prime * result + roomInfo_soldCondition;
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
		RoomInfoVo other = (RoomInfoVo) obj;
		if (!Arrays.equals(roomImg, other.roomImg))
			return false;
		if (roomInfo_articleNumber != other.roomInfo_articleNumber)
			return false;
		if (roomInfo_extraPrice != other.roomInfo_extraPrice)
			return false;
		if (roomInfo_img == null) {
			if (other.roomInfo_img != null)
				return false;
		} else if (!roomInfo_img.equals(other.roomInfo_img))
			return false;
		if (roomInfo_maxPeople != other.roomInfo_maxPeople)
			return false;
		if (roomInfo_minPeople != other.roomInfo_minPeople)
			return false;
		if (roomInfo_name == null) {
			if (other.roomInfo_name != null)
				return false;
		} else if (!roomInfo_name.equals(other.roomInfo_name))
			return false;
		if (roomInfo_offPeakPrice != other.roomInfo_offPeakPrice)
			return false;
		if (roomInfo_peakEndDate == null) {
			if (other.roomInfo_peakEndDate != null)
				return false;
		} else if (!roomInfo_peakEndDate.equals(other.roomInfo_peakEndDate))
			return false;
		if (roomInfo_peakPrice != other.roomInfo_peakPrice)
			return false;
		if (roomInfo_peakStartDate == null) {
			if (other.roomInfo_peakStartDate != null)
				return false;
		} else if (!roomInfo_peakStartDate.equals(other.roomInfo_peakStartDate))
			return false;
		if (roomInfo_roomNumber != other.roomInfo_roomNumber)
			return false;
		if (roomInfo_soldCondition != other.roomInfo_soldCondition)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "RoomInfoVo [roomInfo_roomNumber=" + roomInfo_roomNumber + ", roomInfo_articleNumber="
				+ roomInfo_articleNumber + ", roomInfo_name=" + roomInfo_name + ", roomInfo_peakPrice="
				+ roomInfo_peakPrice + ", roomInfo_offPeakPrice=" + roomInfo_offPeakPrice + ", roomInfo_peakStartDate="
				+ roomInfo_peakStartDate + ", roomInfo_peakEndDate=" + roomInfo_peakEndDate
				+ ", roomInfo_soldCondition=" + roomInfo_soldCondition + ", roomInfo_minPeople=" + roomInfo_minPeople
				+ ", roomInfo_maxPeople=" + roomInfo_maxPeople + ", roomInfo_extraPrice=" + roomInfo_extraPrice
				+ ", roomInfo_img=" + roomInfo_img + ", roomImg=" + Arrays.toString(roomImg) + "]";
	}

	public int getRoomInfo_roomNumber() {
		return roomInfo_roomNumber;
	}

	public void setRoomInfo_roomNumber(int roomInfo_roomNumber) {
		this.roomInfo_roomNumber = roomInfo_roomNumber;
	}

	public int getRoomInfo_articleNumber() {
		return roomInfo_articleNumber;
	}

	public void setRoomInfo_articleNumber(int roomInfo_articleNumber) {
		this.roomInfo_articleNumber = roomInfo_articleNumber;
	}

	public String getRoomInfo_name() {
		return roomInfo_name;
	}

	public void setRoomInfo_name(String roomInfo_name) {
		this.roomInfo_name = roomInfo_name;
	}

	public int getRoomInfo_peakPrice() {
		return roomInfo_peakPrice;
	}

	public void setRoomInfo_peakPrice(int roomInfo_peakPrice) {
		this.roomInfo_peakPrice = roomInfo_peakPrice;
	}

	public int getRoomInfo_offPeakPrice() {
		return roomInfo_offPeakPrice;
	}

	public void setRoomInfo_offPeakPrice(int roomInfo_offPeakPrice) {
		this.roomInfo_offPeakPrice = roomInfo_offPeakPrice;
	}

	public Date getRoomInfo_peakStartDate() {
		return roomInfo_peakStartDate;
	}

	public void setRoomInfo_peakStartDate(Date roomInfo_peakStartDate) {
		this.roomInfo_peakStartDate = roomInfo_peakStartDate;
	}

	public Date getRoomInfo_peakEndDate() {
		return roomInfo_peakEndDate;
	}

	public void setRoomInfo_peakEndDate(Date roomInfo_peakEndDate) {
		this.roomInfo_peakEndDate = roomInfo_peakEndDate;
	}

	public int getRoomInfo_soldCondition() {
		return roomInfo_soldCondition;
	}

	public void setRoomInfo_soldCondition(int roomInfo_soldCondition) {
		this.roomInfo_soldCondition = roomInfo_soldCondition;
	}

	public int getRoomInfo_minPeople() {
		return roomInfo_minPeople;
	}

	public void setRoomInfo_minPeople(int roomInfo_minPeople) {
		this.roomInfo_minPeople = roomInfo_minPeople;
	}

	public int getRoomInfo_maxPeople() {
		return roomInfo_maxPeople;
	}

	public void setRoomInfo_maxPeople(int roomInfo_maxPeople) {
		this.roomInfo_maxPeople = roomInfo_maxPeople;
	}

	public int getRoomInfo_extraPrice() {
		return roomInfo_extraPrice;
	}

	public void setRoomInfo_extraPrice(int roomInfo_extraPrice) {
		this.roomInfo_extraPrice = roomInfo_extraPrice;
	}

	public String getRoomInfo_img() {
		return roomInfo_img;
	}

	public void setRoomInfo_img(String roomInfo_img) {
		this.roomInfo_img = roomInfo_img;
	}

	public MultipartFile[] getRoomImg() {
		return roomImg;
	}

	public void setRoomImg(MultipartFile[] roomImg) {
		this.roomImg = roomImg;
	}

	
	
}
