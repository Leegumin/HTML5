package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_01;

public class Customers_Silver extends Customers_Common {
	@Override
	public void show() {
		this.id = "3";
		this.name = "브래드";
		this.grade = "Silver";
		System.out.println("아이디 : " + id + ", " + "이름 : " + name + ", " + "등급 : " + grade);
	}
}
