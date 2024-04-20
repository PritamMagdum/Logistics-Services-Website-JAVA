package com.pritam.helper;

import org.apache.catalina.User;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	private static SessionFactory factory;
	
	
	public static SessionFactory getFactory(){
		
		try {
			
			if(factory == null) {
				factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			}					
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return factory;
	}


	public static User getUserByEmailAndPassword(String uemail, String upwd) {
		// TODO Auto-generated method stub
		return null;
	}
}
