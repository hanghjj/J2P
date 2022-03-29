package com.Jim2Pack.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.Jim2Pack.main.Service.getJimListService;
import com.Jim2Pack.main.VO.Jim;

@Controller
public class getJimListController {
	@Autowired
	getJimListService jls;
	
	@RequestMapping(value = "/JimList", method = RequestMethod.GET)
	public String view(HttpServletRequest request,@SessionAttribute("loggedID") String ID) {
		if(ID!=null) {
			List<Jim> list = jls.getJimList(ID);
			request.setAttribute("list", list);
		}
		
		return "/JimList";
	}
}
