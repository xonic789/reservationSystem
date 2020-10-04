package com.proj.yollowa.service.login;

public class Test {
	
	public String searchId() {
		char[] password = {'!','@','#','$','%','^','&','*','(',')','+','=','`','~'};
		String userVo="asdfasdfasdfasdf";
		String result="faild";
		char[] user_password= userVo.toCharArray();
		
		
		return result;
	}
	
	
	public static void main(String[] args) {
		
		Test test = new Test();
		System.out.println(test.searchId());
	}
}
