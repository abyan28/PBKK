package com.abyan.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.abyan.entity.Menu;
import com.abyan.entity.Restoran;
import com.abyan.entity.Tag;

@Repository
public class RestoranDAOImpl implements RestoranDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Restoran> getRestoran() {
		// TODO Auto-generated method stub
		
		Session currSession = sessionFactory.getCurrentSession();
		
		Query<Restoran> kueri = currSession.createQuery("from Restoran", Restoran.class);
		
		List<Restoran> restoran = kueri.getResultList();
		
		return restoran;
	}

	@Override
	public void saveRestoran(Restoran resto) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		currSession.saveOrUpdate(resto);

	}

	@Override
	public Restoran getRestoranByID(int restoID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Restoran theResto = currSession.get(Restoran.class,restoID);
		
		return theResto;
	}
	
	
	@Override
	public List<Tag> getTagRestoran(int restoID){
		Session currSession = sessionFactory.getCurrentSession();
		
		Restoran theResto = currSession.get(Restoran.class, restoID);
		
		List<Tag> theTag = theResto.getTags();
		
		return theTag;
	}
	
	
	@Override
	public void deleteRestoran(int restoID) {
		// TODO Auto-generated method stub
		Session currSession = sessionFactory.getCurrentSession();
		
		Query kueri = currSession.createQuery("delete from Restoran where ID=:restoranID");
		kueri.setParameter("restoranID", restoID);
		
		kueri.executeUpdate();

	}

}