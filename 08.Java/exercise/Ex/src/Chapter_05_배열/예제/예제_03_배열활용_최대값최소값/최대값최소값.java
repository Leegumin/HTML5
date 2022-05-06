package Chapter_05_배열.예제.예제_03_배열활용_최대값최소값;

public class 최대값최소값 {
	public static void main(String args[]) {
		int[] score = { 79, 88, 91, 33, 100, 55, 95 };

		/* 배열의 첫 번째 값으로 최대값을 초기화 */
		int max = score[0];
		/* 배열의 첫 번째 값으로 최소값을 초기화 */
		int min = score[0];

		/* 배열의 첫 번째값을 기준으로 최대값, 최소화를 초기화 했기 때문에 첫 번째 배열[0]은 제외 */
		for (int i = 1; i < score.length; i++) {
			/* score[i]의 값이 79보다 크면 max값은 score[i] 이후 score[i]의 값보다 크면 그 값이 대신 들어감 */
			if (score[i] > max) {
				max = score[i];
			}
			/* score[i]의 값이 79보다 작으면 min값은 score[i] 이후 score[i]의 값보다 작으면 그 값이 대신 들어감 */
			else if (score[i] < min) {
				min = score[i];
			}
		}
		System.out.println("최대값 : " + max);
		System.out.println("최소값 : " + min);
	}
}
