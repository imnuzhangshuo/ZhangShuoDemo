package com.zs.LoginDemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zs.LoginDemo.dao.IUserDao;
import com.zs.LoginDemo.model.User;

@Service
public class UserService implements IUserService{
	
	private IUserDao userDao ;

	public IUserDao getUserDao() {
		return userDao;
	}
	
	@Autowired
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}


	public boolean login(String username, String password) {
		if(username == null || password == null || "".equals(username) || "".equals(password)) {
			return false;
		}
		if(userDao.selectUserByUsernameAndPassword(username, password) == null)
			return false;
		return true;
	}

	public List<User> getAllUsersByCriteria(String username, String gender, String age) {
		return userDao.selectUsersByUsernameOrGenderOrAge(username, gender, age);
	}
	
	
	
}