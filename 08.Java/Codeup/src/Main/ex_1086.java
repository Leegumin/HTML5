package Main;

import java.util.Scanner;

public class ex_1086 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		double w = scn.nextInt();
		double h = scn.nextInt();
		double b = scn.nextInt();

		double result = (w * h * b) / 8 / 1024 / 1024;
		System.out.printf("%.2f MB", result);
	}
}