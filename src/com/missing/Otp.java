package com.missing;

import java.util.Random;

public  class Otp {

	public static int main(String[] args) {
		// TODO Auto-generated method stub
		Random rand = new Random();
		int otp=rand.nextInt(900000) + 100000;
		System.out.printf( " "+otp);
		return otp;
	}

}
