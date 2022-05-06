package Main;

import java.util.Scanner;

public class ex_1414_02 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);
		String str = scn.nextLine();
		int countC = 0;
		int countCC = 0;

		for (int i = 0; i < str.length(); i++) {

			if (str.substring(i, i+1).equalsIgnoreCase("c")) {
				countC++;
			}
			
			/* str.length-1은 인덱스 마지막 넘버를 나타냄 */
			/* 즉 (i != str.length - 1) -> 인덱스의 마지막 넘버링 전까지 조건이 맞기때문에 작업을 수행하고 */
			/* 마지막 인덱스넘버에서는 i와 str.length-1의 값이 동일하기 때문에 작업을 수행하지 않아 str[i+1]이 오류가 나지 않음*/
			if (i != str.length() - 1) {
				if ((str.substring(i, i+2)).equalsIgnoreCase("cc")) {
					countCC++;
				}
			}
		}
		System.out.println("C: " + countC);
		System.out.println("CC: " + countCC);
	}
}
