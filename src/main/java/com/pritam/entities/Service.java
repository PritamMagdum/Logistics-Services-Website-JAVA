package com.pritam.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Service {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int s_Id;
	@Column(length = 100)
	private String s_Name;
	@Column(length = 4000)
	private String s_Desc;
	@Column(length = 250)
	private String s_Pic;
	@Column (length = 500)
	private String path;
	
	
	public Service() {
		super();
	}


	public Service(String s_Name, String s_Desc, String s_Pic) {
		super();
		this.s_Name = s_Name;
		this.s_Desc = s_Desc;
		this.s_Pic = s_Pic;
	}


	public Service(int s_Id, String s_Name, String s_Desc, String s_Pic) {
		super();
		this.s_Id = s_Id;
		this.s_Name = s_Name;
		this.s_Desc = s_Desc;
		this.s_Pic = s_Pic;
	}


	public int getS_Id() {
		return s_Id;
	}


	public void setS_Id(int s_Id) {
		this.s_Id = s_Id;
	}


	public String getS_Name() {
		return s_Name;
	}


	public void setS_Name(String s_Name) {
		this.s_Name = s_Name;
	}


	public String getS_Desc() {
		return s_Desc;
	}


	public void setS_Desc(String s_Desc) {
		this.s_Desc = s_Desc;
	}


	public String getS_Pic() {
		return s_Pic;
	}


	public void setS_Pic(String s_Pic) {
		this.s_Pic = s_Pic;
	}
	
	
	
	
	
	

}
