package com.Demo.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Demo.Dao.StudentDao;
import com.Demo.entity.Register;
import com.Demo.entity.Student;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDao dao;
	
	@RequestMapping("/student")
	public String student() {
		return "student";
	}
	
	
	@RequestMapping(path = "/saveStudent", method = RequestMethod.POST)
	 public String register(@RequestParam("name") String name, @RequestParam("department") String department) {
	        try {
	        
	            Student student = new Student(name, department);
	            System.out.println("test");
	            dao.savestudent(student);
	            return "Student saved successfully!";
	        } catch (Exception e) {
	            e.printStackTrace();
	            return "Error saving student: " + e.getMessage();
	        }
	    }

}
