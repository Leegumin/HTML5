package Main;

import java.util.Iterator;
import java.util.Scanner;

public class ex_1295 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		/* 내 풀이 */
//		String[] str = scn.nextLine().split("");
//
//		for (int i = 0; i < str.length; i++) {
//			if (str[i].equals(str[i].toUpperCase())) {
//				str[i] = str[i].toLowerCase();
//			} else {
//				str[i] = str[i].toUpperCase();
//			}
//		}
//
//		System.out.println(String.join("", str));

		/* 선생님풀이 */
		String strInput = scn.next();
		String strResult = "";

		/* 1 */
		for (int i = 0; i < strInput.length(); i++) {
			/* charAt로 문자로 변환된 상태이나 앞에 (int) -> 정수(아스키코드)  +""을 더해주면 -> 문자열로 바뀜*/
			String cLetter = strInput.charAt(i) + "";
			System.out.println("cLetter: "+ cLetter);
			/* 어차피 equals에서 자체적으로 true, false값 나와서 == true 생략해도 됨 */
			if (cLetter.equals(cLetter.toLowerCase())) {
				strResult += cLetter.toUpperCase();
				/*
				 * else if를 else로 바꾸고 그냥 나머지는 전부 toLowerCase로 붙여넣으면 숫자는 어차피 그대로 들어가기 때문에 작동 잘됨
				 */
			} else if (cLetter.equals(cLetter.toUpperCase()) == true) {
				strResult += cLetter.toLowerCase();
			} else {
				strResult += cLetter;
			}
		}

		/* 2 */
//		for (int i = 0; i < strInput.length(); i++) {
//			char cLetter =  strInput.charAt(i);
//			
//			/* 아스키코드표에 대문자 범위*/
//			if(65 <= cLetter  && cLetter <= 90) {
//			/* char는 숫자를 더해주면 바로 아스키코드로 변함 */
//				strResult += (char)(cLetter + 32);
//			/* 아스키코드표에 소문자 범위*/
//			} else if(97 <= cLetter  && cLetter <= 122) {
//				strResult += (char)(cLetter - 32);
//			} else {
//				strResult += cLetter;
//			}
//		}
		System.out.println(strResult);
	}

}
