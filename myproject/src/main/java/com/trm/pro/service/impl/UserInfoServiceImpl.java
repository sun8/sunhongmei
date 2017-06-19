package com.trm.pro.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trm.pro.dao.BaseDao;
import com.trm.pro.entity.Userinfo;
import com.trm.pro.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService{

	@Autowired
	BaseDao<Userinfo> baseDao;
	
	/**
	 * 保存数据
	 */
	@Override
	@Transactional
	public Userinfo save(Userinfo p) {
		baseDao.save(p);
		return p;
	}
	
	/**
	 * 通过用户名查询数据
	 */
	@Transactional
	@Override
	public Userinfo user_name(String username) {
		StringBuffer queryString = new StringBuffer("from Userinfo where 1=1 and username =:username");
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("username", username);
		queryString.append(" order by id desc ");
		List<Userinfo> lists =  baseDao.findList(queryString, params);
		if(lists != null && lists.size() >=1){
			return lists.get(0);
		}else{
			return null;
		}
	}


}
