package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_02_super;

public class 수퍼_super_사용법 {

	public static void main(String[] args) {
		Child c = new Child();
		c.method();
	}
}

/* 부모 클래스 */
class Parent {
	int x = 10;
}

/* 자식 클래스 */
class Child extends Parent {
	int x = 20;

	void method() {
		/* 자식 클래스의 정의된 x를 출력 */
		System.out.println("x = " + x);
		System.out.println("this.x = " + this.x);
		/* 부모 클래스의 정의된 x를 출력 */
		System.out.println("super.x = " + super.x);
	}
}
