package com.Jim2Pack.main.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Jim2Pack.main.Mappers.UserMapper;
import com.Jim2Pack.main.VO.User;

@Service
public class UserSignInService {
	@Autowired
	UserMapper usermapper;
	
	public int SignIn(String id, String pass) {
		User user = usermapper.SignIn(id, pass);
		if(user!=null) {
			return 1;
		}
		else return 0;
	}
}
