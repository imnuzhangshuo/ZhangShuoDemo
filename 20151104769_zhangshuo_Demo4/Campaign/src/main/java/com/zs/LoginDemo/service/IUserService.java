package com.zs.LoginDemo.service;

import java.util.List;

import com.zs.LoginDemo.model.User;

public interface IUserService {
	public boolean login(String username, String password);
	
	public List<User> getAllUsersByCriteria(String username, String gender, String age);
}
