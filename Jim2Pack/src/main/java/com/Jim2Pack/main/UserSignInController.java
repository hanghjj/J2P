package com.Jim2Pack.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jim2Pack.main.Service.UserSignInService;
import com.Jim2Pack.main.VO.User;
import com.Jim2Pack.main.config.Message;

@Controller
public class UserSignInController {
	@Autowired
	UserSignInService uss;
	
	@RequestMapping(value = "/SignIn" , method = {RequestMethod.GET})
	public String view(Model model) {
		String result = "SignIn";
			return result;
	}
	@RequestMapping(value = "/SignIn" , method = {RequestMethod.POST})
	public String SignIn(User user, Model model) {
		String url = "Alert";
		int num = uss.SignIn(user.getID(), user.getPassword());
		if(num==1) {
		//로그인 성공
			model.addAttribute("loggedID",user.getID());
			url = "/Home";
		}
		else{
		//로그인 실패
			Message msg = Message.builder().message("로그인 정보가 일치하지 않습니다.").url("/SignIn").build();
			model.addAttribute("mess", msg);
		}
		return url;
	}
}
