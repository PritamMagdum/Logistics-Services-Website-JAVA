package com.pritam.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.pritam.entities.GetQuote;

public class GetQuoteDao {

	private SessionFactory factory;

	public GetQuoteDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveGetQuote(GetQuote getquote) {
		
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		int quoteId =(int)session.save(getquote);
		
		tx.commit();
		session.close();
		return quoteId;
		
	}
}
