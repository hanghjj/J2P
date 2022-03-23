package com.Jim2Pack.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jim2Pack.main.Service.GetUserService;
import com.Jim2Pack.main.Service.UserSignUpService;
import com.Jim2Pack.main.VO.User;
import com.Jim2Pack.main.config.Message;

@Controller
public class UserSignUpController {
	@Autowired
	UserSignUpService sus;
	@Autowired
	GetUserService gus;
	
	@RequestMapping(value = "/SignUp" , method = {RequestMethod.GET})
	public String view(Model model) {
		String result = "SignUp";
			return result;
	}
	
	@RequestMapping(value = "/SignUp" , method = {RequestMethod.POST})
	public String SignUp(User user, Model model, String checkPass) {
		String url = "Alert";
		int num = gus.getUser(user.getID());
		if(num==1) {
			if(!user.getPassword().equals(checkPass)) {
				Message msg = Message.builder().message("비밀번호 확인이 일치하지 않습니다.").url("/SignUp").build();
				model.addAttribute("mess", msg);
			}
			else{
				sus.signup(user);
				Message msg = Message.builder().message("회원가입이 완료되었습니다.").url("/").build();
				model.addAttribute("mess", msg);
			}
		}
		else{
			Message msg = Message.builder().message("중복된 아이디가 존재합니다.").url("/SignUp").build();
			model.addAttribute("mess", msg);
			
		}
		return url;
	}
	
}
