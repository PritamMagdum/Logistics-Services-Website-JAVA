package com.pritam.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int u_Id;
	@Column(length = 50)
	private String u_Name;
	@Column(length = 30)
	private String u_Mail;
	@Column(length = 25)
	private String u_Password;
	@Column(length = 250)
	private String u_Pic;
	@Column(length = 15)
	private String u_Type = "User";
	@Column(length = 25)
	private String u_Mobile;
	
	public User() {
		super();
	}

	public User(String u_Name, String u_Mail, String u_Password, String u_Pic, String u_Type, String u_Mobile) {
		super();
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Password = u_Password;
		this.u_Pic = u_Pic;
		this.u_Type = u_Type;
		this.u_Mobile = u_Mobile;
	}

	public User(int u_Id, String u_Name, String u_Mail, String u_Password, String u_Pic, String u_Type,
			String u_Mobile) {
		super();
		this.u_Id = u_Id;
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Password = u_Password;
		this.u_Pic = u_Pic;
		this.u_Type = u_Type;
		this.u_Mobile = u_Mobile;
	}

	public int getU_Id() {
		return u_Id;
	}

	public void setU_Id(int u_Id) {
		this.u_Id = u_Id;
	}

	public String getU_Name() {
		return u_Name;
	}

	public void setU_Name(String u_Name) {
		this.u_Name = u_Name;
	}

	public String getU_Mail() {
		return u_Mail;
	}

	public void setU_Mail(String u_Mail) {
		this.u_Mail = u_Mail;
	}

	public String getU_Password() {
		return u_Password;
	}

	public void setU_Password(String u_Password) {
		this.u_Password = u_Password;
	}

	public String getU_Pic() {
		return u_Pic;
	}

	public void setU_Pic(String u_Pic) {
		this.u_Pic = u_Pic;
	}

	public String getU_Type() {
		return u_Type;
	}

	public void setU_Type(String u_Type) {
		this.u_Type = u_Type;
	}

	public String getU_Mobile() {
		return u_Mobile;
	}

	public void setU_Mobile(String u_Mobile) {
		this.u_Mobile = u_Mobile;
	}

	@Override
	public String toString() {
		return "User [u_Id=" + u_Id + ", u_Name=" + u_Name + ", u_Mail=" + u_Mail + ", u_Password=" + u_Password
				+ ", u_Pic=" + u_Pic + ", u_Type=" + u_Type + ", u_Mobile=" + u_Mobile + "]";
	}
	
	

	
}


