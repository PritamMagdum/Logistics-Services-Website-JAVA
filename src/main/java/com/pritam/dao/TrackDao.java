package com.pritam.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.pritam.entities.Driver;
import com.pritam.entities.Track;

public class TrackDao {

	private SessionFactory factory;

	public TrackDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
public int saveTrack(Track track) {
		
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		int trackId =(int)session.save(track);
		
		tx.commit();
		session.close();
		return trackId;
		
	}
	
}
