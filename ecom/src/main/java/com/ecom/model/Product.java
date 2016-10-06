package com.ecom.model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3864477482538088432L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	private int product_id;
	
	@Column
	private String name;
	@Column
	private String brand;
	@Column
	private BigDecimal price;
	@Column
	private String category;
	
	@Column(length = 5000)
	private String description;
	
	@Column
	private String suppliername;
	
	@Column
	private int qty;
	
	@Column
	private String imgname;
	
	@Transient
	private MultipartFile imgfile;
	
	
	
	
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSuppliername() {
		return suppliername;
	}
	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}

	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
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
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public MultipartFile getImgfile() {
		return imgfile;
	}
	public void setImgfile(MultipartFile imgfile) {
		this.imgfile = imgfile;
	}
	public void setToNull() {
		this.brand="";
		this.category="";
		this.description="";
		this.price=null;
		this.name="";
		this.suppliername="";
		this.qty=0;
		
	}
	
	
}
