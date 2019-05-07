package com.kce.dao;

import java.util.ArrayList;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kce.model.Flower;
import com.kce.model.Student;

@Repository
public class Daoimple implements DaoInterfacee  {

	@Autowired
	SessionFactory fact;
	
	
	@Override
	@Transactional
	public void insert(Student ob)
	{
		Session session = fact.getCurrentSession();
		session.save(ob);
		
	}
	
	@Override
	@Transactional
	public void insertflower(Flower ob)
	{
		Session session = fact.getCurrentSession();
		session.save(ob);
		
	}
	
	
	
	@Override
	@Transactional
	public int validateuser(Student ob)
	{
		Session session = fact.getCurrentSession();
		Query query = session.createQuery("from Student");
		
		ArrayList<Student> ab = (ArrayList<Student>) query.list();
		
		for(Student temp : ab)
		{
			if( (temp.getPassword().equals(ob.getPassword())) && (temp.getUsername().equals(ob.getUsername())) )
			{
				return 1;
			}
		}
		return 0;
		
	}
	
	
	
	@Override
	@Transactional
	public ArrayList<Flower> view()
	{
		Session session = fact.getCurrentSession();
		Query query = session.createQuery("from Flower");
		
		ArrayList<Flower> ab = (ArrayList<Flower>) query.list();
		return ab;
	}
	
	
	
	}
