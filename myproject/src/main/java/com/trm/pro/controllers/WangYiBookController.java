package com.trm.pro.controllers;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trm.pro.entity.Book;
import com.trm.pro.service.BookService;
/**
 * 首页
 * @author 小徐
 *
 */
@Controller
@RequestMapping("Book")
public class WangYiBookController {
	
	@Autowired
	private BookService bookservice;
	/**
	 * 后台首页
	 * @param model
	 * @param name
	 * @param pass
	 * @return
	 */
	@RequestMapping(value="GetData" ,method={RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public String GetData(String callback,String type){
		List<Book> zbtj_list = bookservice.List_book(type,"","");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("zbtj_list", zbtj_list);
		if(StringUtils.isNotEmpty(callback)){
			return callback+"("+jsonObject.toString()+")";
		}else{
			return jsonObject.toString();
		}
	}
	
	/**
	 * 后台json
	 * @param model
	 * @param name
	 * @param pass
	 * @return
	 */
	@RequestMapping(value="" ,method={RequestMethod.GET,RequestMethod.POST})
	public String Home(Model model,String name,String type,String order_type){
		List<Book> zbtj_list = bookservice.List_book("zbtj",order_type,"");
		List<Book> xssj_list = bookservice.List_book("xssj",order_type,"");
		List<Book> jdph_list = bookservice.List_book("jdph",order_type,"");
		List<Book> ztyd_list = bookservice.List_book("ztyd",order_type,"");
		List<Book> gg_list = bookservice.List_book("gg",order_type,"");
		model.addAttribute("zbtj_list", zbtj_list);
		model.addAttribute("xssj_list", xssj_list);
		model.addAttribute("jdph_list", jdph_list);
		model.addAttribute("ztyd_list", ztyd_list);
		model.addAttribute("gg_list", gg_list);
		return "Book/index";
	}
	
	
	/**
	 * 根据类型显示页面
	 * @param model
	 * @param name
	 * @param type
	 * @param order_type
	 * @return
	 */
	@RequestMapping(value="type" ,method={RequestMethod.GET,RequestMethod.POST})
	public String type(Model model,String name,String type,String order_type){
		List<Book> list = bookservice.List_book(type,order_type,"");
		model.addAttribute("more_list", list);
		model.addAttribute("name", name);
		return "Book/more";
	}
	
	
	/**
	 * 根据品类显示不同页面
	 * @param model
	 * @param name
	 * @param type
	 * @param order_type
	 * @return
	 */
	@RequestMapping(value="ts_type" ,method={RequestMethod.GET,RequestMethod.POST})
	public String ts_type(Model model,String name,String type,String order_type){
		String res = "";
		if(type.equalsIgnoreCase("man")){
			res = "man";
		}else if(type.equalsIgnoreCase("woman")){
			res = "";
		}else if(type.equalsIgnoreCase("chuban")){
			res = "";
		}else if(type.equalsIgnoreCase("classify")){
			res = "classify";
		}else if(type.equalsIgnoreCase("free")){
			res = "free";
		}else if(type.equalsIgnoreCase("taste")){
			res = "taste";
		}else if(type.equalsIgnoreCase("ranking")){
			res = "ranking";
		}else if(type.equalsIgnoreCase("account")){
			res = "account";
		}
		List<Book> zbtj_list = bookservice.List_book("zbtj",order_type,"");
		model.addAttribute("zbtj_list", zbtj_list);
		return "Book/"+res;
	}
	
	/**
	 *点击书本阅读
	 * @param model
	 * @param name
	 * @param type
	 * @param order_type
	 * @return
	 */
	@RequestMapping(value="read" ,method={RequestMethod.GET,RequestMethod.POST})
	public String read(Model model,String id){
		Book book = bookservice.book_id(Integer.parseInt(id));
		model.addAttribute("book", book);
		return "Book/bookDetails";
	}
	
	/**
	 *special
	 * @param model
	 * @param name
	 * @param type
	 * @param order_type
	 * @return
	 */
	@RequestMapping(value="special" ,method={RequestMethod.GET,RequestMethod.POST})
	public String special(Model model,String id){
//		Book book = bookservice.book_id(Integer.parseInt(id));
//		model.addAttribute("book", book);
		return "Book/special";
	}
	
	/**
	 * 搜索
	 */
	@RequestMapping(value="search" ,method={RequestMethod.GET,RequestMethod.POST})
	public String search(Model model,String name){
		List<Book> list = null;
		if(StringUtils.isNotEmpty(name)){
			list = bookservice.List_book(null,null,name);	
		}
		model.addAttribute("all_list", list);
		model.addAttribute("name", name);
		return "Book/search";
	}
	
	
	/**
	 * 图片信息回显
	 * @return
	 */
	@RequestMapping(value = "imageShow", method = { RequestMethod.GET, RequestMethod.POST })
	public String imageShow(HttpServletResponse response,String fileName){
		//获得文件所在路径
		String filePath = "D://mypro//images//Book";
		ServletOutputStream out = null;
		InputStream in = null;
		byte []bytes = null;
		if(filePath!=null){
			try {
		        //二进制输出流
		        response.setContentType( "multipart/form-data" );          
		        //得到输出流
		        out = response.getOutputStream();
		        File file = new File(filePath+"//"+fileName);
		        in = new FileInputStream(file);     
		        //从输入流读取数据到输出流
		        bytes = new byte [ 1024 ];
		        while ( -1 != in.read( bytes ) ) {
		             out.write( bytes );
		        }         
		        //强制刷新输出流
		        out.flush();
		   } catch ( IOException e ) {
		        e.printStackTrace();
		   } catch ( Exception e ) {
		        e.printStackTrace();
		   } finally {
		        if ( in != null ) {
		             try {
		                  in.close();
		             } catch ( IOException e ) {
		                  e.printStackTrace();
		             }
		        }
		        if ( out != null ) try {
		             out.close();
		        } catch ( IOException e ) {
		             e.printStackTrace();
		        }
		        bytes = null;
		   }
		}
		return null;
	}
	
	
}
