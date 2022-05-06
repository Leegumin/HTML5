package Main;

import java.util.Scanner;

public class ex_1047 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		long num1 = scn.nextLong();

		/* <<1 -> 2배, <<2 -> 4배, <<3 -> 8배*/
		
		System.out.println(num1<<2);
	}

}
