package com.Jim2Pack.main.config;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Message {
	String message;
	String url;
}
