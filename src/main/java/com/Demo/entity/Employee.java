package com.Demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotBlank(message = "Employee name is required")
	@Size(min = 2, max = 50, message = "Employee name must be between 2 and 50 characters")
	private String empName;

	@NotBlank(message = "Department is required")
	private String department;

	@NotBlank(message = "Address is required")
	private String address;

	@NotNull(message = "Mobile number is required")
	@Digits(integer = 10, fraction = 0, message = "Mobile number must be a 10-digit number")
	private Long mobileNo;

	@NotBlank(message = "City is required")
	private String city;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", empName=" + empName + ", department=" + department + ", address=" + address
				+ ", mobile=" + mobileNo + ", city=" + city + "]";
	}

	public Employee() {
	}

}
