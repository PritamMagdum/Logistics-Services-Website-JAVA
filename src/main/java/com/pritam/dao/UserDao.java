package com.pritam.dao;

import javax.mail.Session;

import org.apache.catalina.User;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class UserDao {
	private SessionFactory factory;

	public UserDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	
	public User getUserByEmailAndPassword(String email, String password){
		
		User user = null;
		
		try {
			
			String query = "from User where u_Mail =:e and u_Password =:p";
			//String query = "from User where u_Mail = 'e' and u_Password = 'p'";
			org.hibernate.Session session = this.factory.openSession();
			Query q = session.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);
			user=(User)q.uniqueResult();
			
			System.out.println("Fetching data to hibernate database");
			System.out.println(user);
			
			
			session.close();
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return user;
		
	
		
		
		
	}
}
