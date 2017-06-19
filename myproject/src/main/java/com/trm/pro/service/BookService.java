package com.trm.pro.service;
import java.util.List;

import com.trm.pro.entity.Book;

/**
 * 用户手机信息管理
 * @author 徐银刚
 *
 */
public interface BookService {

	/**
	 * 通过id查找书
	 * @param username
	 * @return
	 */
	public Book book_id(int id);
	
	/**
	 * 通过id查找书
	 * @param username
	 * @return
	 */
	public List<Book> List_book(String type,String order_type,String name);
	
}
