package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_06_부모메서드호출;

public class 부모메서드호출 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Point p = new Point();
		
		/* 좌표 설정 set 메서드 실행 */
		p.set(1, 2);
		/* 좌표 출력(부모 메서드) */
		p.showPoint();
		
		Color cp = new Color();

		cp.set(2, 1);
		cp.setColor("red");
		cp.showColorPoint();
	}
}
