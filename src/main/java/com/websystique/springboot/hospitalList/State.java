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
public class State {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Sr_no",nullable=false)
	private Integer Sr_no;
	private String Address;
	private String Hospital;
	private String State;	
	private String District;
	private String City;

	public Integer getSr_no() {
		return Sr_no;
	}
	public void setSr_no(Integer Sr_no) {
		this.Sr_no = Sr_no;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
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
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	
	
	
}
