package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_04;

public class Rectangle {
	int x;
	int y;
	int width;
	int height;
	
	public void show() {
		System.out.println("좌표는 x = " + x + ", y =" + y);
	}

	public int square() {
		return width * height;
	}
}
