package com.ecom.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;




@Entity
public class User 
{
	
	@Id
	@Column
	@NotEmpty(message="Email field is mandatory.")
	private String email;
	
	@Column
	@NotEmpty(message="Name field is mandatory.")
	private String fullname;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(length =100)
	@NotEmpty(message="Password should not be empty.")
	private String password;
	
	@Column
	@NotEmpty(message="Please Enter A City")
	private String city;
	
	
	@Column
	@NotEmpty(message="Phone field is mendatory.") @NumberFormat(style= Style.NUMBER)
	private String mobile;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userroleid", nullable = false)
	private UserRole role;
	

	public UserRole getRole() {
		return role;
	}
	public void setRole(UserRole role) {
		this.role = role;
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

	
	
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public void setToNull()
	{
		
		this.city="";
		this.fullname="";
		this.mobile="";
		
		this.city="";
		this.password="";
		this.email="";
	}
		
	
	
}