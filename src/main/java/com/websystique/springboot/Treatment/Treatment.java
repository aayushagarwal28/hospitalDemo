package com.websystique.springboot.Treatment;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.websystique.springboot.Category.Category;



@Entity
public class Treatment {

	@Id
	private String tid;
	private String tname;
	
	
	@ManyToOne
	private Category category; // bind treatments to a Category
	

	public Treatment()
	{}
	
	public Treatment(String id, String name,String catid) {
		super();
		this.tid = id;
		this.tname = name;
		
		
		this.category = new Category(catid,"");
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	
}

