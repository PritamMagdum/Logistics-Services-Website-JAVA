package com.pritam.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Driver {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int d_Id;
	@Column(length = 50)
	private String d_Name;
	@Column(length = 100)
	private String d_Address;
	@Column(length = 15)
	private String d_Mobile;
	@Column(length = 20)
	private String d_Aadhar;
	@Column(length = 20)
	private String d_Pan;
	
	public Driver() {
		super();
	}

	public Driver(String d_Name, String d_Address, String d_Mobile, String d_Aadhar, String d_Pan) {
		super();
		this.d_Name = d_Name;
		this.d_Address = d_Address;
		this.d_Mobile = d_Mobile;
		this.d_Aadhar = d_Aadhar;
		this.d_Pan = d_Pan;
	}

	public Driver(int d_Id, String d_Name, String d_Address, String d_Mobile, String d_Aadhar, String d_Pan) {
		super();
		this.d_Id = d_Id;
		this.d_Name = d_Name;
		this.d_Address = d_Address;
		this.d_Mobile = d_Mobile;
		this.d_Aadhar = d_Aadhar;
		this.d_Pan = d_Pan;
	}

	public int getD_Id() {
		return d_Id;
	}

	public void setD_Id(int d_Id) {
		this.d_Id = d_Id;
	}

	public String getD_Name() {
		return d_Name;
	}

	public void setD_Name(String d_Name) {
		this.d_Name = d_Name;
	}

	public String getD_Address() {
		return d_Address;
	}

	public void setD_Address(String d_Address) {
		this.d_Address = d_Address;
	}

	public String getD_Mobile() {
		return d_Mobile;
	}

	public void setD_Mobile(String d_Mobile) {
		this.d_Mobile = d_Mobile;
	}

	public String getD_Aadhar() {
		return d_Aadhar;
	}

	public void setD_Aadhar(String d_Aadhar) {
		this.d_Aadhar = d_Aadhar;
	}

	public String getD_Pan() {
		return d_Pan;
	}

	public void setD_Pan(String d_Pan) {
		this.d_Pan = d_Pan;
	}

	@Override
	public String toString() {
		return "Driver [d_Id=" + d_Id + ", d_Name=" + d_Name + ", d_Address=" + d_Address + ", d_Mobile=" + d_Mobile
				+ ", d_Aadhar=" + d_Aadhar + ", d_Pan=" + d_Pan + "]";
	}
	
	
}
	