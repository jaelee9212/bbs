package com.example.bbs.models;

public class ParkModel {
	
	private int facilityId;
	private String facilityName;
	private String facilityPhoto;
	private String state;
	private int count;
	
	

	public int getFacilityId() {
		return facilityId;
	}
	public void setFacilityId(int facilityId) {
		this.facilityId = facilityId;
	}
	public String getFacilityName() {
		return facilityName;
	}
	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}
	public String getFacilityPhoto() {
		return facilityPhoto;
	}
	public void setFacilityPhoto(String facilityPhoto) {
		this.facilityPhoto = facilityPhoto;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "ParkModel [facilityId=" + facilityId + ", facilityName=" + facilityName + ", facilityPhoto="
				+ facilityPhoto + ", state=" + state + ", count=" + count + "]";
	}
}
