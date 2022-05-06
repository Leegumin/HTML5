package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_01;

public class Customers_VIP extends Customers_Common {
	@Override
	public void show() {
		this.id = "1";
		this.name = "홍길동";
		this.grade = "VIP";
		
		System.out.println("아이디 : " + id + ", " + "이름 : " + name + ", " + "등급 : " + grade);
	}
}
