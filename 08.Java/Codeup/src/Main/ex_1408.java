package Main;

import java.util.Scanner;

public class ex_1408 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);
		String str = scn.nextLine();
//		String password1 = "";
//		String password2 = "";
//
//		for (int i = 0; i < str.length(); i++) {
//			password1 += (char) ((int) (str.charAt(i) + 2));
//			password2 += (char) ((int) (str.charAt(i) * 7) % 80 + 48);
//		}
//
//		System.out.println(String.join("", password1));
//		System.out.println(String.join("", password2));

		/* 선생님풀이 */
		String strResult = "";
		String strResult2 = "";

		for (int i = 0; i < str.length(); i++) {
			char cLetter = str.charAt(i);
			strResult += (char) (cLetter + 2);
			strResult2 += (char) ((cLetter * 7) % 80 + 48);
			/* 아스키코드로 변환시켜주는 방법 */
			/* (int)cLetter로 변환시켜주던가 */
			/* 혹은 (cLetter+숫자)로 해줘도 아스키코드 값으로 변함 */
//			System.out.println(cLetter);
//			System.out.println((int) cLetter);
//			System.out.println((char) (cLetter + 0));
		}
		System.out.println(strResult);
		System.out.println(strResult2);
	}
}
