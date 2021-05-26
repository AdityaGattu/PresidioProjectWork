package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BillingAddress {
	@Id
	String bname;
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	String address;
	
	
}
