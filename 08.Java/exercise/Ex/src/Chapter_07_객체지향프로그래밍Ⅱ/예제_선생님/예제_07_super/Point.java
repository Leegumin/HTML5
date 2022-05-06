package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_07_super;

/*좌표 정보를 저장 및 출력하는 클래스*/
public class Point {
	int x;
	int y;
	
	public Point() {
		this.x = 0;
		this.y = 0;
	}

	public Point(int x, int y) {
		this.x = x;
		this.y = y;
	}

	public void showPoint() {
		System.out.println("(" + x + "," + y + ")");
	}
}
