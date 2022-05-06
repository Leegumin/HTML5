package Chapter_02_변수.예제.예제_08_두변수의값바꾸기.copy3;

public class 두변수의값바꾸기 {
	public static void main(String args[]) {
		int x = 10, y = 5;
		System.out.println("x=" + x);
		System.out.println("y=" + y);

		/* x의 값(10)을 tmp에 저장 -> tmp = 10*/
		int tmp = x;
		/* y의 값(5)을 x에 저장 -> x = 5 */
		x = y;
		/* tmp의 값(10)을 y에 저장 -> y = 10 */
		y = tmp;
		/* x와 y의 스왑된 데이터를 출력. 즉 임시저장소를 만들어서 y => x => tmp => y */
		System.out.println("x=" + x);
		System.out.println("y=" + y);
	}
}
