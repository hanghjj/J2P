package com.Jim2Pack.main.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Jim2Pack.main.Mappers.JimMapper;
import com.Jim2Pack.main.VO.Jim;

@Service
public class GetUserJimSetService {
	@Autowired
	JimMapper jm;
	
	public int checkUserJimSet(String ID, String name) {
		Jim jim = jm.GetUserJimSet(ID, name);
		if(jim==null) {
			return 1;
		}
		else return 0;
	}
}
