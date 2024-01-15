package com.Demo.Dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Demo.entity.Student;

@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired 
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	@Override
	public int savestudent(Student student) {
	int i=(int)	hibernateTemplate.save(student);
		return i;
	}

}
