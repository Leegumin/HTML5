package Main;

import java.util.Scanner;

public class ex_1076 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		// 입력을 '문자' 형태로 받음
		char ch = scn.next().charAt(0);
		// '문자'를 '숫자'로 형변환
		int chN = (int) ch;
		// 'a'의 아스키코드 값
		int i = 97;
//		 System.out.println(ch);
//		 System.out.println(chN);

		while (i <= chN) {
			// 'i'를 '문자'로 형변환하여 출력
			System.out.print((char) i + " ");
			i++;
		}
	}
}
