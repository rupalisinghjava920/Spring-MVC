package com.Demo.Dao;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Demo.entity.Register;

@Repository
public class RegisterDaoImpl implements RegisterDao{

	@Autowired
	private HibernateTemplate hibernateTemplate; 
	
	@Transactional
	@Override
	public int saveRegister(Register register) {
		int i=(int) hibernateTemplate.save(register);
		return i;
	}

	@Override
	public Register getRegisterById(int id) {
		 Register register=hibernateTemplate.get(Register.class, id);
		return register;
	}

	//login
	public Register loginRegister(String username,String password)
	{
		String sql="from Register where username=:username and password=:password";
		Register register=(Register)hibernateTemplate.execute(s->{
			Query q=s.createQuery(sql);
			q.setString("username", username);
			q.setString("password", password);
			return q.uniqueResult();
		});
		return register;
	}

	
	

}
