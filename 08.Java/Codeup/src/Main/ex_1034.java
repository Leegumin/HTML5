package Main;

import java.util.Scanner;

public class ex_1034 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		String str = scn.nextLine();

		/* 2진수를 10진수로 */
//		int binaryToDecimal = Integer.parseInt(scn, 2);
		/* 8진수를 10진수로 */
		int octalToDecimal = Integer.parseInt(str, 8);
		/* 16진수를 10진수로 */
//		int hexaToDecimal = Integer.parseInt(scn, 16);

		System.out.println(octalToDecimal);
	}

}
