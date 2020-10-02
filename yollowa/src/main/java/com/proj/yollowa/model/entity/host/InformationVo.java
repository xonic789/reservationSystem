package com.proj.yollowa.model.entity.host;

public class InformationVo {
	private int information_number;
	private int information_type;
	private String information_notice;
	private String information_basicInfo;
	private String information_comment;
	private String information_addPeopleInfo;
	private String information_service;;
	private String information_refundInfo;
	
	public InformationVo() {
		
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((information_addPeopleInfo == null) ? 0 : information_addPeopleInfo.hashCode());
		result = prime * result + ((information_basicInfo == null) ? 0 : information_basicInfo.hashCode());
		result = prime * result + ((information_comment == null) ? 0 : information_comment.hashCode());
		result = prime * result + ((information_notice == null) ? 0 : information_notice.hashCode());
		result = prime * result + information_number;
		result = prime * result + ((information_refundInfo == null) ? 0 : information_refundInfo.hashCode());
		result = prime * result + ((information_service == null) ? 0 : information_service.hashCode());
		result = prime * result + information_type;
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
		InformationVo other = (InformationVo) obj;
		if (information_addPeopleInfo == null) {
			if (other.information_addPeopleInfo != null)
				return false;
		} else if (!information_addPeopleInfo.equals(other.information_addPeopleInfo))
			return false;
		if (information_basicInfo == null) {
			if (other.information_basicInfo != null)
				return false;
		} else if (!information_basicInfo.equals(other.information_basicInfo))
			return false;
		if (information_comment == null) {
			if (other.information_comment != null)
				return false;
		} else if (!information_comment.equals(other.information_comment))
			return false;
		if (information_notice == null) {
			if (other.information_notice != null)
				return false;
		} else if (!information_notice.equals(other.information_notice))
			return false;
		if (information_number != other.information_number)
			return false;
		if (information_refundInfo == null) {
			if (other.information_refundInfo != null)
				return false;
		} else if (!information_refundInfo.equals(other.information_refundInfo))
			return false;
		if (information_service == null) {
			if (other.information_service != null)
				return false;
		} else if (!information_service.equals(other.information_service))
			return false;
		if (information_type != other.information_type)
			return false;
		return true;
	}
	public InformationVo(int information_number, int information_type, String information_notice,
			String information_basicInfo, String information_comment, String information_addPeopleInfo,
			String information_service, String information_refundInfo) {
		super();
		this.information_number = information_number;
		this.information_type = information_type;
		this.information_notice = information_notice;
		this.information_basicInfo = information_basicInfo;
		this.information_comment = information_comment;
		this.information_addPeopleInfo = information_addPeopleInfo;
		this.information_service = information_service;
		this.information_refundInfo = information_refundInfo;
	}
	@Override
	public String toString() {
		return "InformationVo [information_number=" + information_number + ", information_type=" + information_type
				+ ", information_notice=" + information_notice + ", information_basicInfo=" + information_basicInfo
				+ ", information_comment=" + information_comment + ", information_addPeopleInfo="
				+ information_addPeopleInfo + ", information_service=" + information_service
				+ ", information_refundInfo=" + information_refundInfo + "]";
	}
	public int getInformation_number() {
		return information_number;
	}
	public void setInformation_number(int information_number) {
		this.information_number = information_number;
	}
	public int getInformation_type() {
		return information_type;
	}
	public void setInformation_type(int information_type) {
		this.information_type = information_type;
	}
	public String getInformation_notice() {
		return information_notice;
	}
	public void setInformation_notice(String information_notice) {
		this.information_notice = information_notice;
	}
	public String getInformation_basicInfo() {
		return information_basicInfo;
	}
	public void setInformation_basicInfo(String information_basicInfo) {
		this.information_basicInfo = information_basicInfo;
	}
	public String getInformation_comment() {
		return information_comment;
	}
	public void setInformation_comment(String information_comment) {
		this.information_comment = information_comment;
	}
	public String getInformation_addPeopleInfo() {
		return information_addPeopleInfo;
	}
	public void setInformation_addPeopleInfo(String information_addPeopleInfo) {
		this.information_addPeopleInfo = information_addPeopleInfo;
	}
	public String getInformation_service() {
		return information_service;
	}
	public void setInformation_service(String information_service) {
		this.information_service = information_service;
	}
	public String getInformation_refundInfo() {
		return information_refundInfo;
	}
	public void setInformation_refundInfo(String information_refundInfo) {
		this.information_refundInfo = information_refundInfo;
	}
	
	
	
}
