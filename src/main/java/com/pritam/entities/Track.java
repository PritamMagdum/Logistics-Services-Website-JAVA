package com.pritam.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Track {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int t_Id;
	@Column(length = 50)
	private String c_Name;
	@Column(length = 100)
	private String c_Address;
	@Column(length = 15)
	private String c_Mobile;
	@Column(length = 50)
	private String Departure;
	@Column(length = 50)
	private String Arrival;
	@Column(length = 50)
	private String Delivery;
	@Column(length = 15)
	private String Mode;
	@Column(length = 20)
	private String Weight;
	@Column(length = 20)
	private String Dimension;
	@Column(length = 20)
	private String Booking_Date;
	@Column(length = 50)
	private String d_Name;
	@Column(length = 15)
	private String d_Mobile;
	@Column(length = 100)
	private String s_Description;
	@Column(length = 50)
	private String Amount;
	@Column(length = 20)
	private String p_Mode;
	@Column(length = 20)
	private String p_Status;
	@Column(length = 50)
	private String v_Number;
	@Column(length = 50)
	private String Track_Number;
	@Column(length = 20)
	private Date date;
	
	public Track() {
		super();
	}

	public Track(String c_Name, String c_Address, String c_Mobile, String departure, String arrival, String delivery,
			String mode, String weight, String dimension, String booking_Date, String d_Name, String d_Mobile,
			String s_Description, String amount, String p_Mode, String p_Status, String v_Number, String track_Number) {
		super();
		this.c_Name = c_Name;
		this.c_Address = c_Address;
		this.c_Mobile = c_Mobile;
		Departure = departure;
		Arrival = arrival;
		Delivery = delivery;
		Mode = mode;
		Weight = weight;
		Dimension = dimension;
		Booking_Date = booking_Date;
		this.d_Name = d_Name;
		this.d_Mobile = d_Mobile;
		this.s_Description = s_Description;
		Amount = amount;
		this.p_Mode = p_Mode;
		this.p_Status = p_Status;
		this.v_Number = v_Number;
		Track_Number = track_Number;
	}
	
	

	public Track(String c_Name, String c_Address, String c_Mobile, String departure, String arrival, String delivery,
			String mode, String weight, String dimension, String booking_Date, String d_Name, String d_Mobile,
			String s_Description, String amount, String p_Mode, String p_Status, String v_Number, String track_Number,
			Date date) {
		super();
		this.c_Name = c_Name;
		this.c_Address = c_Address;
		this.c_Mobile = c_Mobile;
		Departure = departure;
		Arrival = arrival;
		Delivery = delivery;
		Mode = mode;
		Weight = weight;
		Dimension = dimension;
		Booking_Date = booking_Date;
		this.d_Name = d_Name;
		this.d_Mobile = d_Mobile;
		this.s_Description = s_Description;
		Amount = amount;
		this.p_Mode = p_Mode;
		this.p_Status = p_Status;
		this.v_Number = v_Number;
		Track_Number = track_Number;
		this.date = date;
	}

	public Track(int t_Id, String c_Name, String c_Address, String c_Mobile, String departure, String arrival,
			String delivery, String mode, String weight, String dimension, String booking_Date, String d_Name,
			String d_Mobile, String s_Description, String amount, String p_Mode, String p_Status, String v_Number,
			String track_Number) {
		super();
		this.t_Id = t_Id;
		this.c_Name = c_Name;
		this.c_Address = c_Address;
		this.c_Mobile = c_Mobile;
		Departure = departure;
		Arrival = arrival;
		Delivery = delivery;
		Mode = mode;
		Weight = weight;
		Dimension = dimension;
		Booking_Date = booking_Date;
		this.d_Name = d_Name;
		this.d_Mobile = d_Mobile;
		this.s_Description = s_Description;
		Amount = amount;
		this.p_Mode = p_Mode;
		this.p_Status = p_Status;
		this.v_Number = v_Number;
		Track_Number = track_Number;
	}

	public int getT_Id() {
		return t_Id;
	}

	public void setT_Id(int t_Id) {
		this.t_Id = t_Id;
	}

	public String getC_Name() {
		return c_Name;
	}

	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}

	public String getC_Address() {
		return c_Address;
	}

	public void setC_Address(String c_Address) {
		this.c_Address = c_Address;
	}

	public String getC_Mobile() {
		return c_Mobile;
	}

	public void setC_Mobile(String c_Mobile) {
		this.c_Mobile = c_Mobile;
	}

	public String getDeparture() {
		return Departure;
	}

	public void setDeparture(String departure) {
		Departure = departure;
	}

	public String getArrival() {
		return Arrival;
	}

	public void setArrival(String arrival) {
		Arrival = arrival;
	}

	public String getDelivery() {
		return Delivery;
	}

	public void setDelivery(String delivery) {
		Delivery = delivery;
	}

	public String getMode() {
		return Mode;
	}

	public void setMode(String mode) {
		Mode = mode;
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

	public String getBooking_Date() {
		return Booking_Date;
	}

	public void setBooking_Date(String booking_Date) {
		Booking_Date = booking_Date;
	}

	public String getD_Name() {
		return d_Name;
	}

	public void setD_Name(String d_Name) {
		this.d_Name = d_Name;
	}

	public String getD_Mobile() {
		return d_Mobile;
	}

	public void setD_Mobile(String d_Mobile) {
		this.d_Mobile = d_Mobile;
	}

	public String getS_Description() {
		return s_Description;
	}

	public void setS_Description(String s_Description) {
		this.s_Description = s_Description;
	}

	public String getAmount() {
		return Amount;
	}

	public void setAmount(String amount) {
		Amount = amount;
	}

	public String getP_Mode() {
		return p_Mode;
	}

	public void setP_Mode(String p_Mode) {
		this.p_Mode = p_Mode;
	}

	public String getP_Status() {
		return p_Status;
	}

	public void setP_Status(String p_Status) {
		this.p_Status = p_Status;
	}

	public String getV_Number() {
		return v_Number;
	}

	public void setV_Number(String v_Number) {
		this.v_Number = v_Number;
	}

	public String getTrack_Number() {
		return Track_Number;
	}

	public void setTrack_Number(String track_Number) {
		Track_Number = track_Number;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Track [t_Id=" + t_Id + ", c_Name=" + c_Name + ", c_Address=" + c_Address + ", c_Mobile=" + c_Mobile
				+ ", Departure=" + Departure + ", Arrival=" + Arrival + ", Delivery=" + Delivery + ", Mode=" + Mode
				+ ", Weight=" + Weight + ", Dimension=" + Dimension + ", Booking_Date=" + Booking_Date + ", d_Name="
				+ d_Name + ", d_Mobile=" + d_Mobile + ", s_Description=" + s_Description + ", Amount=" + Amount
				+ ", p_Mode=" + p_Mode + ", p_Status=" + p_Status + ", v_Number=" + v_Number + ", Track_Number="
				+ Track_Number + ", date=" + date + "]";
	}


	
	
}
