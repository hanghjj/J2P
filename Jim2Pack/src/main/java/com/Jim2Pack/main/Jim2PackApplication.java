package com.Jim2Pack.main;



import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.Jim2Pack.main")
public class Jim2PackApplication {

	public static void main(String[] args) {
		SpringApplication.run(Jim2PackApplication.class, args);
	}
}
