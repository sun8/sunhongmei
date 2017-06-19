package com.trm.pro.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trm.pro.dao.BaseDao;
import com.trm.pro.entity.Book;
import com.trm.pro.entity.Userinfo;
import com.trm.pro.service.BookService;
import com.trm.pro.service.UserInfoService;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	BaseDao<Book> baseDao;
	
	/**
	 * 通过id查找书
	 */
	@Transactional
	@Override
	public Book book_id(int id) {
		return baseDao.getById(Book.class, id);
	}

	/**
	 * 按照类型分类
	 */
	@Transactional
	@Override
	public List<Book> List_book(String type,String order_type,String name) {
		StringBuffer queryString = new StringBuffer("from Book where 1=1 ");
		Map<String, Object> params = new HashMap<String, Object>();
		if(StringUtils.isNotEmpty(type)){
			queryString.append("and type=:type");
			params.put("type", type);
		}
		if(StringUtils.isNotEmpty(order_type)){
			queryString.append("and order_type=:order_type");
			params.put("order_type", order_type);
		}
		if(StringUtils.isNotEmpty(name)){
			queryString.append("and name like:name");
			params.put("name", "%"+name+"%");
		}
		queryString.append(" order by id desc ");
		List<Book> lists =  baseDao.findList(queryString, params);
		return lists;
	}


}
