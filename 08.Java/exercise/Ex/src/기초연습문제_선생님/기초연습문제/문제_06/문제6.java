package 기초연습문제_선생님.기초연습문제.문제_06;

import java.util.Scanner;

public class 문제6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int index1 = sc.nextInt();
		int index2 = sc.nextInt();
		
		int[] arr = { 10, 20, 30, 50, 3, 60, -3 };
		
		int tmp = arr[index1];
		arr[index1] = arr[index2];
		arr[index2] = tmp;

		for (int i = 0; i < arr.length; i++) {
			System.out.println("arr[" + i + "] = " + arr[i]);
		}
	}
}
