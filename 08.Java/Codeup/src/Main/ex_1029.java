package Main;

import java.util.Scanner;

public class ex_1029 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		String num = scanner.nextLine();
		Double result = Double.parseDouble(num);
		System.out.printf("%.11f", result);
	}

}
