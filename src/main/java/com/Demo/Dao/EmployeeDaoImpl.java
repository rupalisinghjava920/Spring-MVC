package com.Demo.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Demo.entity.Employee;
import com.Demo.entity.Register;

@Repository
public class EmployeeDaoImpl implements EmployeeDoa{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	@Override
	public int addEmployee(Employee employee) {
		int i =(int) hibernateTemplate.save(employee);
		return i;
	}
	
	public List<Employee> getAllEmployee() {
		List<Employee> list=hibernateTemplate.loadAll(Employee.class);
		return list;
	}

	@Transactional
	@Override
	public void update(Employee employee) {
		hibernateTemplate.update(employee);
	}

	@Transactional
	@Override
	public void deleteEmployee(int id) {
		hibernateTemplate.delete(id);		
	}

	

}
