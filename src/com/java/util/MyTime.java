package com.java.util;

import java.text.SimpleDateFormat;
import java.util.Date;
		
	/**
	 * 
	 * ��ǰʱ��Ļ�ȡ
	 * @author ���ڳ�
	 *
	 */
public class MyTime {

	
	public static String getDate(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
		return sdf.format(date);
	}
}
