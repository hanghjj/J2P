package com.Jim2Pack.main.Mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.Jim2Pack.main.VO.Jim;

@Repository
@Mapper
public interface JimMapper {
	public void AddJim(Jim jim);
	public int DeleteJim(String name);
	public List<Jim> getJimList(String ID);
}
