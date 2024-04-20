package com.pritam.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.pritam.entities.Contact;


public class ContactDao {

	private SessionFactory factory;

	public ContactDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
public int saveContact(Contact cont) {
		
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		int contId =(int)session.save(cont);
		
		tx.commit();
		session.close();
		return contId;
		
	}
	
}
