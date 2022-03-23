package com.Jim2Pack.main.Mappers;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.Jim2Pack.main.VO.User;

@Repository
@Mapper
public interface UserMapper {
	public void SignUp(User user);
	public User GetUser(String ID);
	public User SignIn(String ID, String Password);
}
