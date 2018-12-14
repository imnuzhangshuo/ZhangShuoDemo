package com.zs.LoginDemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zs.LoginDemo.model.User;
import com.zs.LoginDemo.service.IUserService;

@Controller
@RequestMapping("/UserController")
public class UserController{
	
	private IUserService userService;

	public IUserService getUserService() {
		return userService;
	}
	
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String username, String password, Model model) {
		if(username == null || password == null || "".equals(username) || "".equals(password)) {
			model.addAttribute("msg", "请将信息填全");
			return "login";
		}
		
		if(userService.login(username, password)) {
			model.addAttribute("username", username);
			return "success";
		} else {
			model.addAttribute("msg", "账号或密码错误，请重新输入");
			return "login";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/query", method = RequestMethod.POST)
	public List<User> query(String username, String gender, String age) {
		if("".equals(username) && "".equals(gender) && "".equals(age))
			return null;
		return userService.getAllUsersByCriteria(username, gender, age);
	}
}