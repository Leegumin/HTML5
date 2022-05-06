package Main;

import java.util.Scanner;

public class ex_1082 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

//		// 16진수를 입력받아 정수로변환
//		int n = scn.nextInt(16);
//		// 16진수 'B'의 정수 값은 11
//		System.out.println(n);
//		// %X or %x = 16진수로 값을 나타내줌
//		System.out.printf("%X%n", n);
//
//		for (int i = 1; i <= 15; i++) {
//			System.out.printf("%X*%X=%X%n", n, i, n * i);
//		}

//		--------------CodeUp용
		String str = scn.next();
		// 16진수를 10진수로 변경
		int n = Integer.parseInt(str, 16); 
		for (int i = 1; i <= 15; i++) {
			// 10진수를 16진수로 변경
			String hexaDecimal = Integer.toHexString(n * i);
			// i를 16진수로 변경
			String iHexa = Integer.toHexString(i);
			// 16진수로 변경된 데이터의 소문자를 전부 대문자로 변환
			String result = hexaDecimal.toUpperCase();
			// 16진수로 변경된 i를 전부 대문자로 변환
			String iH = iHexa.toUpperCase();
			System.out.println(str + "*" + iH + "=" + result);
		}

	}
}
