package Chapter_06_객체지향프로그래밍.예제.예제_07_참조형매개변수;

class Data2 {
	int x;
}

public class 참조형매개변수 {
	public static void main(String[] args) {
		Data2 d = new Data2();
		d.x = 10;
		System.out.println("main() : x = " + d.x);

		/* static의 change 메서드를 호출 */
		change(d);
		System.out.println("After change(d)");
		System.out.println("main() : x = " + d.x);
	}

	static void change(Data2 d) {
		d.x = 1000;
		System.out.println("change() : x = " + d.x);
	}
}
