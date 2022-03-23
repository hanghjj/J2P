package com.Jim2Pack.main.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Jim2Pack.main.Mappers.UserMapper;
import com.Jim2Pack.main.VO.User;

@Service
public class GetUserService {
	@Autowired
	UserMapper usermapper;
	
	public int getUser(String ID) {
		User user = usermapper.GetUser(ID);
		if(user == null) {
			return 1;
		}
		else {
			return 0;
		}
	}
}
