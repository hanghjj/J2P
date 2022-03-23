package com.Jim2Pack.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AddJimController {
	
	@RequestMapping(value = "/AddJim" , method = {RequestMethod.GET})
	public String view(Model model) {
		String result = "AddJim";
			return result;
	}
}
