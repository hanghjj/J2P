package com.Jim2Pack.main;


import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jim2Pack.main.Service.AddJimService;
import com.Jim2Pack.main.Service.GetUserJimSetService;
import com.Jim2Pack.main.VO.Jim;
import com.Jim2Pack.main.config.Message;

@Controller
public class AddJimController {
	@Autowired
	AddJimService ajs;
	@Autowired
	GetUserJimSetService guj;
	
	@RequestMapping(value = "/AddJim" , method = {RequestMethod.GET})
	public String view(Model model) {
		String result = "AddJim";
			return result;
	}
	@RequestMapping(value = "/AddJim" , method = {RequestMethod.POST})
	public String SignUp(Jim jim, Model model, String[] items) {
		String url = "Alert";
		System.out.println(jim.getID());
		String str = Arrays.toString(items);
		System.out.println(str);
		jim.setItem(str);
		//jim.setItem(items);
		int OK = guj.checkUserJimSet(jim.getID(),jim.getName());
		System.out.println(OK);
		if(OK==1) {
			ajs.Addjim(jim);
			Message msg = Message.builder().message("JimSet 등록이 완료되었습니다.").url("/").build();
			model.addAttribute("mess", msg);
		}
		else if(OK==0){
			Message msg = Message.builder().message("JimSet 이름이 중복되었습니다.").url("/AddJim").build();
			model.addAttribute("mess", msg);
		}
		
		return url;
	}
	
}
