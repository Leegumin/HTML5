package Chapter_05_배열.예제.예제_09_2차원배열의초기화;

public class 배열초기화 {
	public static void main(String args[]) {
		int[][] score = { { 100, 100, 100 }, { 20, 20, 20 }, { 30, 30, 30 }, { 40, 40, 40 }, { 50, 50, 50 } };
		int korTotal = 0, engTotal = 0, mathTotal = 0;

		System.out.println(" 번호 국어  영어  수학  총점  평균");
		System.out.println("=======================");

		/* 행 반복 */
		for (int i = 0; i < score.length; i++) {
			int sum = 0;
			float avg = 0.0f;

			/* 국어 총점 */
			korTotal += score[i][0];
			/* 영어어 총점 */
			engTotal += score[i][1];
			/* 수학 총점 */
			mathTotal += score[i][2];

			/* <번호> */
			System.out.printf("%3d", i + 1);

			/* 열 반복 */
			for (int j = 0; j < score[i].length; j++) {
				sum += score[i][j];
				/* <과목당 점수> */
				System.out.printf("%5d", score[i][j]);
			}
			avg = sum / (float) score[i].length;
			/* <평균값> */
			System.out.printf("%5d %5.1f%n", sum, avg);
		}
		/* <총점> */
		System.out.println("=======================");
		System.out.printf("총점: %3d %4d %4d%n", korTotal, engTotal, mathTotal);
	}
}

