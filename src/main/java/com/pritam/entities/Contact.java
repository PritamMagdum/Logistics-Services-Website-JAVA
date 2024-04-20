package com.pritam.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Contact {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int c_Id;
	@Column(length = 50)
	private String u_Name;
	@Column(length = 50)
	private String u_Mail;
	@Column(length = 15)
	private String u_Mobile;
	@Column(length = 200)
	private String u_Message;
	@Column(length = 20)
	private Date date;
	
	public Contact() {
		super();
	}

	public Contact(String u_Name, String u_Mail, String u_Mobile, String u_Message) {
		super();
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Mobile = u_Mobile;
		this.u_Message = u_Message;
	}

	
	public Contact(String u_Name, String u_Mail, String u_Mobile, String u_Message, Date date) {
		super();
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Mobile = u_Mobile;
		this.u_Message = u_Message;
		this.date = date;
	}

	public Contact(int c_Id, String u_Name, String u_Mail, String u_Mobile, String u_Message) {
		super();
		this.c_Id = c_Id;
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Mobile = u_Mobile;
		this.u_Message = u_Message;
	}

	public int getC_Id() {
		return c_Id;
	}

	public void setC_Id(int c_Id) {
		this.c_Id = c_Id;
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

	public String getU_Mobile() {
		return u_Mobile;
	}

	public void setU_Mobile(String u_Mobile) {
		this.u_Mobile = u_Mobile;
	}

	public String getU_Message() {
		return u_Message;
	}

	public void setU_Message(String u_Message) {
		this.u_Message = u_Message;
	}

	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Contact [c_Id=" + c_Id + ", u_Name=" + u_Name + ", u_Mail=" + u_Mail + ", u_Mobile=" + u_Mobile
				+ ", u_Message=" + u_Message + ", date=" + date + "]";
	}


	
	
}
