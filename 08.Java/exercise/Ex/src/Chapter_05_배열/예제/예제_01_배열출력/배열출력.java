package Chapter_05_배열.예제.예제_01_배열출력;

import java.util.Arrays;

public class 배열출력 {
	public static void main(String args[]) {
		int[] iArr1 = new int[10];
		int[] iArr2 = new int[10];
		int[] iArr3 = new int[] { 100, 95, 80, 70, 60 };
//		int[] iArr3 = { 100, 95, 80, 70, 60 };
		char[] chArr = { 'a', 'b', 'c', 'd' };

		for (int i = 0; i < iArr1.length; i++) {
			iArr1[i] = i + 1;
		}

		for (int i = 0; i < iArr2.length; i++) {
			iArr2[i] = (int) (Math.random() * 10) + 1;
		}
		
		for (int i = 0; i < iArr1.length; i++) {
			System.out.print(iArr1[i]+", ");
		}
		
		System.out.println();
		
		/* Arrays.toString(null)을 써야 배열로 보여주고 그게 아니면 그냥 안의 값을 순서대로 나열 */
		System.out.println(Arrays.toString(iArr2));
		System.out.println(Arrays.toString(iArr3));
		System.out.println(Arrays.toString(chArr));
		System.out.println(iArr3);
		System.out.println(chArr);

	}
}
