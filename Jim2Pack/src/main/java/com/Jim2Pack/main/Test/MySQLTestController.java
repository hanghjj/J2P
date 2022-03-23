package com.Jim2Pack.main.Test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MySQLTestController {
	
	@Autowired
	MySQLTestService mts;
	
	@RequestMapping("test1")
	public ModelAndView goHome(HttpServletRequest request) { 
		ModelAndView mav = new ModelAndView(); 
		List<MySQLTestVo> mtv = mts.getList();
		mav.addObject("list", mtv); 
		mav.setViewName("MySQLTest"); 
		return mav; 
	}

}
