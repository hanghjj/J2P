package com.Jim2Pack.main.Service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Jim2Pack.main.Mappers.UserMapper;
import com.Jim2Pack.main.VO.User;

@Service
public class UserSignUpService {
	@Autowired
	private UserMapper usermapper;

	public void signup(User user) {
		usermapper.SignUp(user);
	}
}
