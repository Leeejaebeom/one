package com.jmt.demo.util;

import com.google.gson.Gson;

public class JsonUtil {
	
	public static <T> T parseJson(String jsonString, Class<T> clazz) {
		Gson gson = new Gson();
		T result = gson.fromJson(jsonString, clazz);
		
		System.out.println("parseJson: "+jsonString);
		System.out.println("result: "+result);
		
		return result;
	}
}
