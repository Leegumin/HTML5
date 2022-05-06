package 기초연습문제_선생님.기초연습문제.문제_02;

public class 문제2 {

	public static void main(String[] args) {
		// 문제2. arr 배열 중에서 값이 60인 곳의 값을 출력해보자.
		// 정답 : 5
		int[] arr = { 10, 20, 30, 50, 3, 60, -3 };

		// 전통적 방법의 for문
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] == 60) {
				System.out.println(i);
			}
		}
	}

}
