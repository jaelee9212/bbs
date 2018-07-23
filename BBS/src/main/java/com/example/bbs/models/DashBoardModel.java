package com.example.bbs.models;


public class DashBoardModel {

	private int dashboard_Id;
	private String title;
	private String content;
	private String username;
	private int userId;
	private int catagoryid;
	private int countNum;
	private String catagoryName;
	private String createdTime;
	private String modifiedTime;
	
	public int getDashboard_Id() {
		return dashboard_Id;
	}
	public void setDashboard_Id(int dashboard_Id) {
		this.dashboard_Id = dashboard_Id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCatagoryid() {
		return catagoryid;
	}
	public void setCatagoryid(int catagoryid) {
		this.catagoryid = catagoryid;
	}
	public String getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public String getModifiedTime() {
		return modifiedTime;
	}
	public void setModifiedTime(String modifiedTime) {
		this.modifiedTime = modifiedTime;
	}
	public String getCatagoryName() {
		return catagoryName;
	}
	public void setCatagoryName(String catagoryName) {
		this.catagoryName = catagoryName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getcountNum() {
		return countNum;
	}
	public void setcountNum(int countNum) {
		this.countNum = countNum;
	}
	@Override
	public String toString() {
		return "DashBoardModel [dashboardId=" + dashboard_Id + ", title=" + title + ", content=" + content
				+ ", username=" + username + ", userId=" + userId + ", catagoryid=" + catagoryid + ", catagoryName="
				+ catagoryName + ", createdTime=" + createdTime + ", modifiedTime=" + modifiedTime + "]";
	}
}