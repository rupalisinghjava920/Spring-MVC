package com.Demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Demo.Dao.EmployeeDoa;
import com.Demo.Dao.RegisterDao;
import com.Demo.entity.Employee;
import com.Demo.entity.Register;

@Controller
public class HomeController {

	@Autowired
	private RegisterDao registerDao;

	@Autowired
	private EmployeeDoa employeeDoa;

	@GetMapping("/login")
	public String Login() {
		return "login";
	}

	@GetMapping("/register")
	public String registerPage() {
		System.out.println("het");
		return "register";
	}

	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute Register register) {
		registerDao.saveRegister(register);
		return "redirect:/login";
	}

	// login
	@RequestMapping(path = "/loginRegister", method = RequestMethod.POST)
	public String loginRegister(@Valid @RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session,Model model) {
		Register user = registerDao.loginRegister(username, password);
		if (user != null) {
			session.setAttribute("loginUser", user);
			List<Employee> list=employeeDoa.getAllEmployee();
			model.addAttribute("employeelist", list);
		} else {
			session.setAttribute("loginUser", user);
			// model.addAttribute("msg", "Invaid Username and Password");
			System.out.println("login failded");
			return "redirect:/login";
		}
		return "employees";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginuser");
		session.setAttribute("msg", "logout seccesfully");
		return "login";
	}

	@GetMapping("/addemployee")
	public String addemployee() {
		return "addEmployee";
	}

	// Employee

	@RequestMapping(path = "/addEmployee", method = RequestMethod.POST)
	public String addEmployee(@Valid @ModelAttribute Employee employee, HttpSession session) {
		session.setAttribute("loginUser", employee);
		employeeDoa.addEmployee(employee);
		return "employees";
	}
	@RequestMapping(path= "/employees")
	public String  home(Model m, HttpSession session,@ModelAttribute Employee employee) {		
		session.setAttribute("loginUser", employee);
		List<Employee> list=employeeDoa.getAllEmployee();
		m.addAttribute("employeelist", list);
		return "employees";
	}
	
	

}
