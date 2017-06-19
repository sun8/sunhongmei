package com.trm.pro.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Show")
public class ShowImagesUntil {
	/**
	 * 图片信息回显
	 * @return
	 */
	@RequestMapping(value = "imageShow", method = { RequestMethod.GET, RequestMethod.POST })
	public String imageShow(HttpServletResponse response,String fileName){
		//获得文件所在路径
		String filePath = "C://Users//Administrator//Desktop//my文件//myproject//src//main//mypro//images//Home";
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
