package com.Jim2Pack.main.Test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MySQLTestService {
	@Autowired
	MySQLTestDAO mtd;
	
	List<MySQLTestVo> getList() {
		return mtd.getList();
	}
}
