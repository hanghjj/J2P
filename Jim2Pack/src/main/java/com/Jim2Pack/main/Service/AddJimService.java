package com.Jim2Pack.main.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Jim2Pack.main.Mappers.JimMapper;
import com.Jim2Pack.main.VO.Jim;

@Service
public class AddJimService {
	@Autowired
	JimMapper jMapper;
	
	public void Addjim(Jim jim) {
		jMapper.AddJim(jim);
	}
}
