package com.javen.service;  

import com.javen.model.User;
  
 
public interface UserService {
	//用户注册
	void regist(User user);
	//用户登录
	void login(String name, String password);
 
}