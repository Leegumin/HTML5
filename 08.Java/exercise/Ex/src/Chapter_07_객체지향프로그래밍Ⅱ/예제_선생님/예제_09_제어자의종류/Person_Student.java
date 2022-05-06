package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_09_제어자의종류;

public class Person_Student extends Person {
	public void set() {
		age = 30; // default값 -> 접근가능
		name = "홍길동"; // public -> 접근가능
		height = 175; // height -> 상속받는 자식만 가능 -> 가능
		/* weight = 99; */ // private -> 불가능
		setWeight(99); // 메소드로 변경 후 메소드를 통해 저장 가능
	}
}
