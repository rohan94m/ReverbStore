package com.ecom.model;

import javax.persistence.*;

@Entity
public class UserRole {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	private Integer userroleid;
	
	@Column
	private String role;
	
	
	public Integer getUserroleid() {
		return userroleid;
	}
	public void setUserroleid(Integer userroleid) {
		this.userroleid = userroleid;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	

}
