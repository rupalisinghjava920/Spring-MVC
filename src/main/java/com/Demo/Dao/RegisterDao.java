package com.Demo.Dao;

import com.Demo.entity.Register;

public interface RegisterDao {
	
	public int saveRegister(Register register);
	
	//login
	public Register loginRegister(String username,String password);
	
	public Register getRegisterById(int id);

}
