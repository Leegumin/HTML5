package Chapter_05_배열.예제.예제_11_1차원_2차원_출력방법;

import java.util.Arrays;

public class 배열출력방법 {
	public static void main(String args[]) {
		int[] arr = { 0, 1, 2, 3, 4 };
		int[][] arr2D = { { 11, 12 }, { 21, 22 } };
		
		/* 일차원 배열을 출력할 수 있음 */
		System.out.println(Arrays.toString(arr));
		/* 2차원 이상 배열을 출력할 수 있음 */
		System.out.println(Arrays.deepToString(arr2D));
	}
}
