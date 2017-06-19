package com.trm.pro.controllers;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Array;
import com.trm.pro.entity.Userinfo;
import com.trm.pro.service.UserInfoService;
/**
 * 首页
 * @author 小徐
 *
 */
@Controller
@RequestMapping("Home")
public class xiaoxuController {
	
	@Autowired
	UserInfoService userinfoservice;
	
	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="" ,method={RequestMethod.GET,RequestMethod.POST})
	public String xiaoxu(Model model,String type){
		if(type == null){
			type = "index";
		}
		String views = "Home/index";
		if(type.equalsIgnoreCase("about_us")){
			views = "Home/about_us";
		}else if(type.equalsIgnoreCase("product")){
			views = "Home/product";
		}else if(type.equalsIgnoreCase("service")){
			views = "Home/service";
		}else if(type.equalsIgnoreCase("news")){
			views = "Home/news";
		}else if(type.equalsIgnoreCase("successful")){
			views = "Home/successful";
		}else if(type.equalsIgnoreCase("talent")){
			views = "Home/talent";
		}else if(type.equalsIgnoreCase("contact_us")){
			views = "Home/contact_us";
		}
		model.addAttribute("type", type);
		return views;
	}
	
	/**
	 * 关于我们
	 * @param model
	 * @return
	 */
	@RequestMapping(value="about_us" ,method={RequestMethod.GET,RequestMethod.POST})
	public String about_us(Model model){
		return "Home/about_us";
	}
	
	/**
	 * 产品中心
	 * @param model
	 * @return
	 */
	@RequestMapping(value="product" ,method={RequestMethod.GET,RequestMethod.POST})
	public String product(Model model){
		return "Home/product";
	}
	
	/**
	 * 服务中心
	 * @param model
	 * @return
	 */
	@RequestMapping(value="service" ,method={RequestMethod.GET,RequestMethod.POST})
	public String service(Model model){
		return "Home/service";
	}
	
	/**
	 * 新闻中心
	 * @param model
	 * @return
	 */
	@RequestMapping(value="news" ,method={RequestMethod.GET,RequestMethod.POST})
	public String news(Model model){
		return "Home/news";
	}
	
	/**
	 * 成功案例
	 * @param model
	 * @return
	 */
	@RequestMapping(value="successful" ,method={RequestMethod.GET,RequestMethod.POST})
	public String successful(Model model){
		return "Home/successful";
	}
	
	/**
	 * 人才招聘
	 * @param model
	 * @return
	 */
	@RequestMapping(value="talent" ,method={RequestMethod.GET,RequestMethod.POST})
	public String talent(Model model){
		return "Home/talent";
	}
	
	/**
	 * 联系我们
	 * @param model
	 * @return
	 */
	@RequestMapping(value="contact_us" ,method={RequestMethod.GET,RequestMethod.POST})
	public String contact_us(Model model){
		return "Home/contact_us";
	}
	
	/**
	 * 登录页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="index" ,method={RequestMethod.GET,RequestMethod.POST})
	public String index(Model model){
		return "Home/Login";
	}
	
	/**
	 * 验证登录
	 * @param model
	 * @param name
	 * @param pass
	 * @return
	 */
	@RequestMapping(value="Login" ,method={RequestMethod.POST})
	@ResponseBody
	public String Login(Model model,String name,String pass,HttpSession httpSession){
		JSONObject jsonObject = new JSONObject();
		Userinfo userinfo = userinfoservice.user_name(name);
		if(userinfo == null){
			jsonObject.put("status", "1");
			jsonObject.put("msg", "用户不存在！！");
		}else if(userinfo.getPassword().equalsIgnoreCase(pass)){
			httpSession.setAttribute("userinfo", userinfo);
			jsonObject.put("status", "0");
			jsonObject.put("msg", "验证成功！！");
		}else{
			jsonObject.put("status", "1");
			jsonObject.put("msg", "用户名或密码错误！！");
		}
		return jsonObject.toString();
	}
}
