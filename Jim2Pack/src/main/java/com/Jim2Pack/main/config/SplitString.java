package com.Jim2Pack.main.config;

public class SplitString {
	public static String[] getItems(String item) {
		item = item.substring(1,item.length()-1);
		String[] temp = item.split(",");
		for(int i=0; i<temp.length; i++) {
			if(temp[i].charAt(0)==' ') {
				temp[i] = temp[i].substring(1,temp[i].length());
			}
			System.out.println(temp[i]);
		}
		return temp;
	}
}
