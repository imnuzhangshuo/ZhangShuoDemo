package com.javen.service;  

import com.javen.model.User;
 
 
/**
 * ÒµÎñ²ã
 * @author Nocol
 *
 */
 
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void regist(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}
 
	@Override
	public void login(String name, String password) {
		// TODO Auto-generated method stub
		userDao.findUserByNameAndPwd(name,password);
	}
}
