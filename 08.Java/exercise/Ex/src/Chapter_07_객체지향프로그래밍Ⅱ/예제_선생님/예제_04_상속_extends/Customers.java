package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_04_상속_extends;

public class Customers {
	String id;
	String name;
	String grade;

	public void draw() {
		System.out.println("여러분은 동성쇼핑몰 고객입니다.");
	}

	public void show() {
		System.out.println("아이디 : " + id);
		System.out.println("이름  : " + name);
		System.out.println("등급  : " + grade);
	}
}
