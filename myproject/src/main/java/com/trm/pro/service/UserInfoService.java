package com.trm.pro.service;
import com.trm.pro.entity.Userinfo;

/**
 * 用户手机信息管理
 * @author 徐银刚
 *
 */
public interface UserInfoService {

	//保存
	public Userinfo save(Userinfo p);

	/**
	 * 通过登录名查询用户数据
	 * @param username
	 * @return
	 */
	public Userinfo user_name(String username);
	
}
