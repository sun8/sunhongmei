package com.trm.pro.controllers;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.trm.pro.entity.Userinfo;
import com.trm.pro.service.UserInfoService;
/**
 *联系我们
 * @author 小徐
 *
 */
@Controller
@RequestMapping("UserInfo")
public class UserInfoController {
	
	@Autowired
	UserInfoService userinfoservice;
	
	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="" ,method={RequestMethod.GET,RequestMethod.POST})
	public String home(Model model,String type){
		return "userinfo/index";
	}
	
	/**
	 * 关于我们
	 * @param model
	 * @return
	 */
	@RequestMapping(value="add_userinfo" ,method={RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public String add_userinfo(Userinfo userinfo){
		userinfoservice.save(userinfo);
		return null;
	}
	
}
