package Chapter_05_배열.연습문제.연습문제_03;

public class 배열합산 {
	public static void main(String args[]) {
		int[] arr = { 10, 20, 30, 40, 50 };
		int sum = 0;
		for (int i = 0; i < arr.length; i++) {
			sum += arr[i];
		}
		System.out.println("sum = " + sum);
	}
}
