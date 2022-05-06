package 기초연습문제_선생님.기초연습문제.문제_07;

public class 문제7_다른방법 {

	public static void main(String[] args) {
		
		int[] arr = { 10, 20, 30, 50, 3, 60, -3 };
		
		int max = arr[0];
		int min = arr[0];

		for (int i = 0; i < arr.length; i++) {
			if (max < arr[i]) {
				max = arr[i];
			}
			if (min > arr[i]) {
				min = arr[i];
			}
			
		}
		
		System.out.println("최대값 : " + max);
		System.out.println("최소값 : " + min);
	}
}
