package Chapter_04_조건문반복문.예제.예제_02_조건식의다양한예;

public class 조건식의다양한예 {
	public static void main(String args[]) {
		int x = 0;
		System.out.printf("x=%d 일 때, 참인 것은 %n", x);

		if (x == 0)
			System.out.println("x == 0");
		if (x != 0)
			System.out.println("x != 0");
		if (!(x == 0))
			System.out.println("!(x == 0)");
		if (!(x != 0))
			System.out.println("!(x != 0)");
		
		x = 1;
		System.out.printf("x=%d 일 때, 참인 것은 %n", x);

		if (x == 0)
			System.out.println("x == 0");
		if (x != 0)
			System.out.println("x != 0");
		if (!(x == 0))
			System.out.println("!(x == 0)");
		if (!(x != 0))
			System.out.println("!(x != 0)");
	}
}
