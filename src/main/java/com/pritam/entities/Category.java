package com.pritam.entities;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int c_Id;
	@Column(length = 15)
	private String c_Title;
	@Column(length = 250)
	private String c_Desc;
	@OneToMany(mappedBy = "category")
	private List<Services> services = new ArrayList<>();
	


	public Category(String c_Title, String c_Desc, List<Services> services) {
		super();
		this.c_Title = c_Title;
		this.c_Desc = c_Desc;
		this.services = services;
	}


	public Category(int c_Id, String c_Title, String c_Desc, List<Services> services) {
		super();
		this.c_Id = c_Id;
		this.c_Title = c_Title;
		this.c_Desc = c_Desc;
		this.services = services;
	}


	public Category() {
		super();
	}


	public int getC_Id() {
		return c_Id;
	}

	public void setC_Id(int c_Id) {
		this.c_Id = c_Id;
	}

	public String getC_Title() {
		return c_Title;
	}

	public void setC_Title(String c_Title) {
		this.c_Title = c_Title;
	}

	public String getC_Desc() {
		return c_Desc;
	}

	public void setC_Desc(String c_Desc) {
		this.c_Desc = c_Desc;
	}

	public List<Services> getServices() {
		return services;
	}


	public void setServices(List<Services> services) {
		this.services = services;
	}


	@Override
	public String toString() {
		return "Category [c_Id=" + c_Id + ", c_Title=" + c_Title + ", c_Desc=" + c_Desc + ", services=" + services
				+ "]";
	}


	
	
}
