package org.springframework.web.servlet.view.freemarker;

import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

/**
 * 加入常用变量
 * 
 * @author 张杰
 *
 */
public class MyFreeMakerView extends FreeMarkerView {
	/**
	* Logger for this class
	*/
	private static final Logger logger = Logger.getLogger(MyFreeMakerView.class);
	
	
	private static final String CONTEXT_PATH = "basePath";

	static HashMap<String,String> userAgent = new  HashMap<String,String>();



	public HashMap<String, String> getUserAgent() {
		return userAgent;
	}



	public void setUserAgent(HashMap<String, String> userAgent) {
		MyFreeMakerView.userAgent = userAgent;
	}



	@Override
	@SuppressWarnings("all")
	protected void exposeHelpers(Map model, HttpServletRequest request) throws Exception {

		//适配ua,变换不同目录
		String ua=request.getHeader("user-agent");
		logger.debug("userAgent:" + ua);
		Set<String> keys = userAgent.keySet();
		for (String key : keys) {
			if(ua.matches(key)){
				//变换目录
				this.setUrl(userAgent.get(key)+this.getUrl());
				break;
			}
		}


		//设置根目录
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
				+ "/";
		model.put(CONTEXT_PATH, basePath);
		super.exposeHelpers(model, request);
	}
}