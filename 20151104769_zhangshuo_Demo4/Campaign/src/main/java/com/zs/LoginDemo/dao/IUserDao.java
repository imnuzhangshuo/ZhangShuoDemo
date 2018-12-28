package com.zs.LoginDemo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.zs.LoginDemo.model.User;

@Repository
public interface IUserDao {
	public User selectUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
	
	public List<User> selectUsersByUsernameOrGenderOrAge(@Param("username") String username, @Param("gender") String gender, @Param("age") String age);
}
