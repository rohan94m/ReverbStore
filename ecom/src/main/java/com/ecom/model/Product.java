package com.ecom.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Product {

	@Id @GeneratedValue @Column
	private int id;
	@Column
	private String name;
	@Column
	private String brand;
	@Column
	private long price;
	@Column
	private String category;
	public Product(String name, String brand, long price, String category) {
	
		this.name = name;
		this.brand = brand;
		this.price = price;
		this.category = category;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}

	
}
