package com.pritam.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.pritam.entities.Service;
import com.pritam.entities.Services;

public class ServiceDao {

	private SessionFactory factory;

	public ServiceDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public boolean saveService(Service service) {
		boolean f = false;
		
		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(service);
			
			tx.commit();
			session.close();
			f = true;
		}catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}
}
