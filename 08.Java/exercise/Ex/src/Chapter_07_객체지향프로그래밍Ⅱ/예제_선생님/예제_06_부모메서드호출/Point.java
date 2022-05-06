package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_06_부모메서드호출;

/*좌표 정보를 저장 및 출력하는 클래스*/
public class Point {
	/* 한 점을 구성하는 x, y 좌표 */
	public int x, y;

	/* 좌표 정보를 저장하는 메소드 */
	public void set(int x, int y) {
		this.x = x;
		this.y = y;
	}
	
	/* 좌표 정보를 출력하는 메소드 */
	public void showPoint() {
		System.out.println("(" + x + ", " + y + ")");
	}
}
