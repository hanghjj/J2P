package com.Jim2Pack.main.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Jim2Pack.main.Mappers.JimMapper;
import com.Jim2Pack.main.VO.Jim;

@Service
public class getJimListService {
	@Autowired
	JimMapper jm;
	
	public List<Jim> getJimList(String ID){
		return jm.getJimList(ID);
	}
}
