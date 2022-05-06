package Chapter_05_배열.예제.예제_14_sort_배열정렬;

import java.util.Arrays;

public class 배열정렬 {
	public static void main(String args[]) {
		int[] arr = { 3, 2, 0, 1, 4 };
		/* 오름차순으로 정렬해줌 */
		Arrays.sort(arr);
		System.out.println(Arrays.toString(arr));
	}
}
