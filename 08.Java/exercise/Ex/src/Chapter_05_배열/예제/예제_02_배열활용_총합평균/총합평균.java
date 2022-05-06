package Chapter_05_배열.예제.예제_02_배열활용_총합평균;

public class 총합평균 {
	public static void main(String args[]) {
		/* 총합을 저장하기 위한 변수 */
		int sum = 0;
		/* 평균을 저장하기 위한 변수 */
		float average = 0f;

		int[] score = { 100, 88, 100, 100, 90 };

		for (int i = 0; i < score.length; i++) {
			sum += score[i];
		}
		
		/* 소수점까지 얻기 위해 float으로 형변환 */
		average = sum / (float) score.length;

		System.out.println("총합: " + sum);
		System.out.println("평균: " + average);
	}
}
