package com.Demo.Dao;

import java.util.List;

import com.Demo.entity.Employee;

public interface EmployeeDoa {
 public int addEmployee(Employee employee);
 public List<Employee> getAllEmployee();
 
 public void update (Employee employee);
 public void deleteEmployee(int id);

}
