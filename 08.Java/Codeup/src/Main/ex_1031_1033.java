package Main;

import java.util.Scanner;

public class ex_1031_1033 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		int num = scn.nextInt();

		String binary = Integer.toBinaryString(num); // 10진수 -> 2진수
		String octal = Integer.toOctalString(num); // 10진수 -> 8진수
		String hexaDecimal = Integer.toHexString(num); // 10진수 -> 16진수

		System.out.println("10진수 : " + num);
        System.out.println("2진수 : " + binary);
        System.out.println("8진수 : " + octal);
        System.out.println("16진수(기본값) : " + hexaDecimal);
        System.out.printf("16진수(대문자): " + hexaDecimal.toUpperCase());
	}

}
