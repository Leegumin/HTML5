package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_04_super;

public class 수퍼_super_사용법 {

	public static void main(String[] args) {
		Point3D p = new Point3D(1, 2, 3);
		System.out.println("x = " + p.x + ", y = " + p.y + ", z = " + p.z);
	}
}

/* 부모 클래스 */
class ex_Point {
	int x, y;

	ex_Point(int x, int y) {
		this.x = x;
		this.y = y;
	}
}

/* 자식 클래스 */
class Point3D extends ex_Point {
	int z;

	Point3D(int x, int y, int z) {
		/* 부모 클래스의 생성자(x, y)를 가져옴 */
		super(x, y);
//		=> this.x = x;
//		   this.y = y;
		this.z = z;
	}
}
