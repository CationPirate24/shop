package com.java.util;

public class TexxttureAndTypeUtil {

	public static String getTexxtture(String s){
		int n = Integer.valueOf(s);
		System.out.println("sfsdfsdffdfffd"+n);
		String texxture = "";
		if(n>=0 && n<=6){
			texxture = "黄金";
		}else if(n>6 && n<=9 ||n==34||n==35||n==40){
			texxture = "钻石";
		}else if(n>9 && n<=16){
			texxture = "K金";
		}else if(n>16 && n<=22 ||n == 33){
			texxture = "铂金";
		}else if(n>22 && n<=27 ||n==36||n==37){
			texxture = "珍珠";
		}else if(n>27 && n<=32 ||n==38||n==39){
			texxture = "宝石";
		}
		return texxture;
	}
	public static String getType(String s){
		String type = "";
		int n = Integer.valueOf(s);
		if(n==1||n==11||n==18||n==24||n==29||n==40){
			type="戒指";
		}else if(n==2||n==12||n==33||n==30||n==36||n==34){
			type="项链";
		}else if(n==3||n==13||n==19||n==39||n==37||n==35){
			type="手链/脚链";
		}else if(n==5||n==15||n==21||n==26||n==32){
			type="手镯";
		}else if(n==4||n==8||n==14||n==20||n==25||n==31){
			type="吊坠";
		}else if(n==6||n==9||n==16||n==22||n==27||n==38){
			type="耳坠";
		}
		return type;
	}
}
