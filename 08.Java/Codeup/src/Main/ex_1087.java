package Main;

import java.util.Scanner;

public class ex_1087 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		int n = scn.nextInt();
		int i = 1;
		int result = 0;
		
		while (true) {
			if (result >= n) {
				break;
			}
			result += i;
			i++;
		}
		System.out.println(result);
	}
}