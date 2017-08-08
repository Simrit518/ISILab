package com.isilab.tool;

public class ParameterTool {

	public static final long USER_LEVEL_ADMIN = 0l;
	public static final long USER_LEVEL_NORMAL = 1l;
	
	public static final String USER_TYPE_DEFAULT = "-1";
	
	/**
	 * 页大小，与TypeTool的数值关联
	 */
	public static final String PAGE_SIZE_DEFAULT = "10";
	/**
	 * 页默认号码
	 */
	public static final String PAGE_NUM_DEFAULT = "1";
	
	/**
	 * JSP按钮编号
	 */
	public static final int JSP_ADMIN = 1;
	public static final int JSP_ADNEWS = 2;
	public static final int JSP_ADACA = 3;
	public static final int JSP_ADRES = 4;
	public static final int JSP_ADDOC = 5;
	public static final int JSP_MISSION = 6;
	public static final int JSP_MACHINE = 7;
	
	/**
	 * 默认cookie过期时间，7天
	 */
	public static final int COOKIE_PIRIED_DEFAULT = 604800;

	
	/**
	 * 是否是上传文件、是否成功
	 */
	public static final int FILE_UPLOAD_NO = 0;
	public static final int FILE_UPLOAD_FAULT = 1;
	public static final int FILE_UPLOAD_SUCCESS = 2;
	
	/**
	 * 远程访问返回代码
	 */
	public static final String REMOTE_CODE_SUCCESS = "1";
	public static final String REMOTE_CODE_FAULT = "2";
}
