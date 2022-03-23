package com.Jim2Pack.main.Test;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MySQLTestDAO {
	List<MySQLTestVo> getList();
}
