package Main;

import java.util.Scanner;

public class ex_1414 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);
		String str = scn.nextLine();

		int countC = 0;
		int countCC = 0;

//		indexOf의 범위를 한칸 한칸 두칸 두칸으로 한정지어줄 필요가 있음
		for (int i = 0; i < str.length(); i++) {
			System.out.println("i: " + i);
			System.out.println("indexOf: " + str.toLowerCase().indexOf("c", i));
			if (str.toLowerCase().indexOf("c", i) >= 0) {
//				System.out.println("indexC" + i + " : " + str.toLowerCase().indexOf("c", i));
				countC++;
			}
			if (str.toLowerCase().indexOf("cc", i) >= 0) {
				countCC++;
			}
		}
		System.out.println("C: " + countC);
		System.out.println("CC: " + countCC);
	}
}
