package Chapter_03_연산자.예제.예제_03_증감연산자;

public class 증감연산자 {
	public static void main(String args[]) {
		int i = 5, j = 5;

		/* 후에 값이 올라가기 때문에 i = 5 */
		System.out.println(i++);
		/* 값이 먼저 올라가기 때문에 j = 6 */
		System.out.println(++j);
		System.out.println("i = " + i + ", j = " + j);
	}
}
