package com.Jim2Pack.main.VO;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class User {
	String ID;
	String Password;
	String Name;
}
