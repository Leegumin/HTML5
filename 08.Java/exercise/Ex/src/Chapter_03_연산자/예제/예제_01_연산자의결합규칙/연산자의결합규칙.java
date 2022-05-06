package Chapter_03_연산자.예제.예제_01_연산자의결합규칙;

public class 연산자의결합규칙 {
	public static void main(String args[]) {
		int x, y;
		
		/* y에 3이 저장된 후에 x에 3이 저장됨 */
		x = y = 3;
		System.out.println("x= " + x);
		System.out.println("y= " + y);
	}
}
