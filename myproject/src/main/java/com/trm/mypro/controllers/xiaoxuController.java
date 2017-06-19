package com.trm.mypro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 首页
 * @author 小徐
 *
 */
@Controller
@RequestMapping("xiaoxu")
public class xiaoxuController {
	
	@RequestMapping(value="xiaoxu" ,method={RequestMethod.GET,RequestMethod.POST})
	public String xiaoxu(Model model){
		return "Home/index";
	}
	
	@RequestMapping(value="home" ,method={RequestMethod.GET,RequestMethod.POST})
	public String home(Model model){
		return "Home/index";
	}
}
