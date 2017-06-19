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
@RequestMapping("ProIndex")
public class IndexController {
	
	@Autowired
	UserInfoService userinfoservice;
	
	/**
	 * 后台首页
	 * @param model
	 * @param name
	 * @param pass
	 * @return
	 */
	@RequestMapping(value="home" ,method={RequestMethod.GET,RequestMethod.POST})
	public String home(Model model,String name,String pass,HttpSession httpSession){
		Userinfo userinfo = (Userinfo) httpSession.getAttribute("userinfo");
		model.addAttribute("username", userinfo.getUsername());
		model.addAttribute("userid", userinfo.getId());
		return "Home/home";
	}
	
	/**
	 * 首页管理
	 * @param model
	 * @return
	 */
	@RequestMapping(value="shouye" ,method={RequestMethod.GET,RequestMethod.POST})
	public String shouye(Model model){
		return "IndexManager/index";
	}
	
	private String img_path = "C://Users//Administrator//Desktop//my文件//myproject//src//main//mypro//images//Home";
	
	private List<MultipartFile> file_list = new ArrayList<MultipartFile>();
	/**
	 * 保存上传文件
	 * @param file
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "save", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String save(
			@RequestParam(value = "file2", required = false) MultipartFile file2,
			@RequestParam(value = "file3", required = false) MultipartFile file3,
			@RequestParam(value = "file4", required = false) MultipartFile file4,
			@RequestParam(value = "file5", required = false) MultipartFile file5,HttpServletRequest request) {
		String result = "";
		//img路径
		if(file2 != null && file2.getSize()>0) {
			String suffix = file2.getOriginalFilename().substring(file2.getOriginalFilename().lastIndexOf("."));
			if(suffix.equalsIgnoreCase(".jpg") || suffix.equalsIgnoreCase(".png") || suffix.equalsIgnoreCase(".gif") || suffix.equalsIgnoreCase(".jpeg")){
				result += ks_save(file2, img_path, "2");
			}else{
				result += "第一张图片格式不支持，请重试！";
			}
		}
		if(file3 != null && file3.getSize()>0){
			String suffix = file3.getOriginalFilename().substring(file3.getOriginalFilename().lastIndexOf("."));
			if(suffix.equalsIgnoreCase(".jpg") || suffix.equalsIgnoreCase(".png") || suffix.equalsIgnoreCase(".gif") || suffix.equalsIgnoreCase(".jpeg")){
				result += ks_save(file3, img_path, "3");
			}else{
				result += "第二张图片格式不支持，请重试！";
			}
		}
		if(file4 != null && file4.getSize()>0){
			String suffix = file4.getOriginalFilename().substring(file4.getOriginalFilename().lastIndexOf("."));
			if(suffix.equalsIgnoreCase(".jpg") || suffix.equalsIgnoreCase(".png") || suffix.equalsIgnoreCase(".gif") || suffix.equalsIgnoreCase(".jpeg")){
				result += ks_save(file4, img_path, "4");
			}else{
				result += "第三张图片格式不支持，请重试！";
			}
		}
		if(file5 != null && file5.getSize()>0){
			String suffix = file5.getOriginalFilename().substring(file5.getOriginalFilename().lastIndexOf("."));
			if(suffix.equalsIgnoreCase(".jpg") || suffix.equalsIgnoreCase(".png") || suffix.equalsIgnoreCase(".gif") || suffix.equalsIgnoreCase(".jpeg")){
				result += ks_save(file5, img_path, "5");
			}else{
				result += "第四张图片格式不支持，请重试！";
			}
		}
		if(file2 == null && file3 == null && file4 == null && file5 == null){
			result = "未做任何修改，保存失败！！";
		}
		return result;
	}
	
	public String ks_save(MultipartFile filess,String img_path,String filename){
		String res = "";
		String suffix = filess.getOriginalFilename().substring(filess.getOriginalFilename().lastIndexOf("."));
		File dirs = null;
		dirs = new File(img_path);			
		if(!dirs.exists()){//如果文件夹不存在
			dirs.mkdirs();//创建文件夹
		}
		img_path = img_path+"//"+filename+suffix;
		try {
			filess.transferTo(new File(img_path));
			res = "第"+(Integer.parseInt(filename)-1)+"张图片上传成功！！";
		} catch (IllegalStateException e) {
			res = "第"+(Integer.parseInt(filename)-1)+"张图片上传失败！！";
		} catch (IOException e) {
			res = "第"+(Integer.parseInt(filename)-1)+"张图片上传失败！！";
		} 
		return res;
	}
}
