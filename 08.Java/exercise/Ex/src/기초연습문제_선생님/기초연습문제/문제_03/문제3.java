package 기초연습문제_선생님.기초연습문제.문제_03;

public class 문제3 {

	public static void main(String[] args) {
		// 문제3. arr 배열의 평균과 총합
		// 정답 : 5
		int[] arr = { 10, 20, 30, 50, 3, 60, -3 };
		int sum = 0;
		double avg = 0;
		
		// 전통적 방법의 for문
		for (int i = 0; i < arr.length; i++) {
			sum += arr[i];
		}

		avg = sum / arr.length;
		
		System.out.println("sum : " + sum);
		System.out.println("avg : " + avg);
	}

}
