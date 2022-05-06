package Main;

import java.util.Scanner;

public class ex_1048 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		long num1 = scn.nextLong();
		long num2 = scn.nextLong();

		/* <<1 -> 2배, <<2 -> 4배, <<3 -> 8배*/
		
		System.out.println(num1<<num2);
	}

}
