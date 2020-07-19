package com.websystique.springboot.Category;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category {

	@Id
	String catid;
	String catname;
	
	public Category()
	{
		
	}
	public Category(String catid, String catname) {
		super();
		this.catid = catid;
		this.catname = catname;
	}
	public String getCatid() {
		return catid;
	}
	public void setCatid(String catid) {
		this.catid = catid;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	
}
