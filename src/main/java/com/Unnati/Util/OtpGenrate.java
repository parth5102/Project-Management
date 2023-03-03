package com.Unnati.Util;

public class OtpGenrate {
	public static String genrateOTP(int n){
		String alphanumeric="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuilder sb=new StringBuilder(n); 
		for(int i=0;i<n;i++) {
			int index = (int)(alphanumeric.length()*Math.random());
			sb.append(alphanumeric.charAt(index));
		}
		return sb.toString();
		
	}

}
