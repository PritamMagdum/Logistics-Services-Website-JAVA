package com.pritam.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.pritam.entities.Driver;

public class DriverDao {

	private SessionFactory factory;

	public DriverDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveDriver(Driver driv) {
		
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		int drivId =(int)session.save(driv);
		
		tx.commit();
		session.close();
		return drivId;
		
	}
}
