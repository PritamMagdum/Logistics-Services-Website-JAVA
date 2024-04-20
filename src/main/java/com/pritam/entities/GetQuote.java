package com.pritam.entities;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GetQuote {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int q_Id;
	@Column(length = 50)
	private String u_Name;
	@Column(length = 50)
	private String u_Mail;
	@Column(length = 15)
	private String u_Mobile;
	@Column(length = 200)
	private String u_Message;
	@Column(length = 50)
	private String Departure;
	@Column(length = 50)
	private String Delivery;
	@Column(length = 50)
	private String Weight;
	@Column(length = 50)
	private String Dimension;
	@Column(length = 20)
	private Date date;
	
	
	public GetQuote() {
		super();
	}


	public GetQuote(String u_Name, String u_Mail, String u_Mobile, String u_Message, String departure, String delivery,
			String weight, String dimension) {
		super();
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Mobile = u_Mobile;
		this.u_Message = u_Message;
		Departure = departure;
		Delivery = delivery;
		Weight = weight;
		Dimension = dimension;
	}

	



	public GetQuote(String u_Name, String u_Mail, String u_Mobile, String u_Message, String departure, String delivery,
			String weight, String dimension, Date date) {
		super();
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Mobile = u_Mobile;
		this.u_Message = u_Message;
		Departure = departure;
		Delivery = delivery;
		Weight = weight;
		Dimension = dimension;
		this.date = date;
	}


	public GetQuote(int q_Id, String u_Name, String u_Mail, String u_Mobile, String u_Message, String departure,
			String delivery, String weight, String dimension) {
		super();
		this.q_Id = q_Id;
		this.u_Name = u_Name;
		this.u_Mail = u_Mail;
		this.u_Mobile = u_Mobile;
		this.u_Message = u_Message;
		Departure = departure;
		Delivery = delivery;
		Weight = weight;
		Dimension = dimension;
	}


	public int getQ_Id() {
		return q_Id;
	}


	public void setQ_Id(int q_Id) {
		this.q_Id = q_Id;
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


	public String getDeparture() {
		return Departure;
	}


	public void setDeparture(String departure) {
		Departure = departure;
	}


	public String getDelivery() {
		return Delivery;
	}


	public void setDelivery(String delivery) {
		Delivery = delivery;
	}


	public String getWeight() {
		return Weight;
	}


	public void setWeight(String weight) {
		Weight = weight;
	}


	public String getDimension() {
		return Dimension;
	}


	public void setDimension(String dimension) {
		Dimension = dimension;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	@Override
	public String toString() {
		return "GetQuote [q_Id=" + q_Id + ", u_Name=" + u_Name + ", u_Mail=" + u_Mail + ", u_Mobile=" + u_Mobile
				+ ", u_Message=" + u_Message + ", Departure=" + Departure + ", Delivery=" + Delivery + ", Weight="
				+ Weight + ", Dimension=" + Dimension + ", date=" + date + "]";
	}



	
	
}
