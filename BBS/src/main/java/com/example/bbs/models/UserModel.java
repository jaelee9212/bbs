package com.example.bbs.models;

import java.util.Date;


public class UserModel {

	private int userId;
	private String email;
	private String pwd;
	private String username;
	private String address;
	private String city;
	private String country;
	private String postalCode;
	private String aboutMe;
	private int profilePicture;
	
	public int getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(int profilePicture) {
		this.profilePicture = profilePicture;
	}
	private Date regDate;
	
    public boolean isMatchPassword(String password) {
        return pwd.equals(password);
    }
    
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "UserModel [userId=" + userId + ", email=" + email + ", pwd=" + pwd + ", username=" + username
				+ ", address=" + address + ", city=" + city + ", country=" + country + ", postalCode=" + postalCode
				+ ", aboutMe=" + aboutMe + ", profilePicture=" + profilePicture + ", regDate=" + regDate + "]";
	}
	
	
}