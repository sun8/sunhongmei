package com.trm.pro.controllers;

import net.sf.json.JSONObject;

public class test {
	public static void main(String[] args) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("a", "1");
		jsonObject.put("b", "2");
		jsonObject.put("c", "3");
		jsonObject.put("d", "4");
		jsonObject.put("e", "5");
		System.out.println(jsonObject.toString());
	}
}
