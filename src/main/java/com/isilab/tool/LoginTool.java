package com.isilab.tool;

import javax.servlet.http.HttpSession;

public class LoginTool {
	
	/**
	 * 是否已登录
	 * @param httpSession
	 * @return
	 */
	public static boolean isLogin(HttpSession httpSession){
		if(httpSession.getAttribute("user") != null)
			return true;
		return false;
	}

}
