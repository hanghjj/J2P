package com.Jim2Pack.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	@RequestMapping("/Logout")
	public String logout() {
		return "Logout";
	}
}
