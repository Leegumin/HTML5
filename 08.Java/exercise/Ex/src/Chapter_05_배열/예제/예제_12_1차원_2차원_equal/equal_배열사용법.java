package Chapter_05_배열.예제.예제_12_1차원_2차원_equal;

import java.util.Arrays;

public class equal_배열사용법 {
	public static void main(String args[]) {
		String[][] str2D = new String[][] {{"aaa", "bbb"}, {"AAA", "BBB"}};
		String[][] str2D2 = new String[][] {{"aaa", "bbb"}, {"AAA", "BBB"}};
		
		/* 일차원 배열에서만 사용 가능 */
		System.out.println(Arrays.equals(str2D, str2D2));
		/* 2차원 이상 배열 사용 가능 */
		System.out.println(Arrays.deepEquals(str2D, str2D2));
	}
}
