package com.websystique.springboot.hospitalList;

import javax.persistence.Entity;
import javax.persistence.Column;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hdfc_hospital_list")
public class Hospital {

	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sr_no", updatable = false, nullable = false)
	private int sr_no;
	//private String Location_Coordinates;
    private String Hospital;
	
	private String State;	
	
	private String District;
	
	
	//private int Pincode;
	
	public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	private String Address;
	
	private String City;
	

	public String getHospital() {
		return Hospital;
	}
	public void setHospital(String hospital) {
		Hospital = hospital;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getDistrict() {
		return District;
	}
	public void setDistrict(String district) {
		District = district;
	}
	/*
	public int getPincode() {
		return Pincode;
	}
	public void setPincode(int pincode) {
		Pincode = pincode;
	}
	*/
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	
	
	

	

	
	
	
	
	
}
