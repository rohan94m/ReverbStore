package com.ecom.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class User 
{
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long user_id;
	
	@Column
	private String fullname;
	
	@Column
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column
	private String password;
	
	@Column
	private String city;
	
	@Column
	private String address;
	@Column
	private long pincode;
	@Column
	private long mobile;
	
	
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getPincode() {
		return pincode;
	}
	public void setPincode(long pincode) {
		this.pincode = pincode;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	
	public void setToNull()
	{
		this.address="";
		this.city="";
		this.fullname="";
		this.mobile=0;
		this.pincode=0;
		this.city="";
		this.password="";
		this.email="";
	}
		
	
	
}