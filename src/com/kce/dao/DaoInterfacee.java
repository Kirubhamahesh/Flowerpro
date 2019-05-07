package com.kce.dao;

import java.util.ArrayList;

import com.kce.model.Flower;
import com.kce.model.Student;

public interface DaoInterfacee {

	public void insert(Student ob);
	
	public void insertflower(Flower ob);
	
	public ArrayList<Flower> view();
	
	public int validateuser(Student ob);
}
