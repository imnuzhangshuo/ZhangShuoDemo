package com.javen.service;  

import com.javen.model.User;
  
 
public interface UserService {
	//�û�ע��
	void regist(User user);
	//�û���¼
	void login(String name, String password);
 
}