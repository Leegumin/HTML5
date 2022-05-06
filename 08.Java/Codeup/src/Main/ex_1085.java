package Main;

import java.util.Scanner;

public class ex_1085 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		double h = scn.nextInt();
		double b = scn.nextInt();
		double c = scn.nextInt();
		double s = scn.nextInt();

		double result = (h * b * c * s) / 8 / 1024 / 1024;
		System.out.printf("%.1f MB", result);
	}
}