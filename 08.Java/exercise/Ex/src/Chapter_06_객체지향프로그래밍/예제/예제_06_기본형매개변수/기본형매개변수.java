package Chapter_06_객체지향프로그래밍.예제.예제_06_기본형매개변수;

class Data {
	int x;
}

public class 기본형매개변수 {
	public static void main(String[] args) {
		Data d = new Data();
		d.x = 10;
		System.out.println("main() : x = " + d.x);

		/* static의 change 메서드를 호출 */
		change(d.x);
		System.out.println("After change(d.x)");
		System.out.println("main() : x = " + d.x);
	}

	static void change(int x) {
		x = 1000;
		System.out.println("change() : x = " + x);
	}
}
