package com.isilab.tool;

import java.util.LinkedHashMap;
import java.util.Map;

public class TypeTool {

	//返回代码类型
	public static final Map<Integer, Integer> CODE_RETURN;
	static{
		CODE_RETURN = new LinkedHashMap<>();
		CODE_RETURN.put(1, 1001);
		CODE_RETURN.put(2, 2001);
	}
}
