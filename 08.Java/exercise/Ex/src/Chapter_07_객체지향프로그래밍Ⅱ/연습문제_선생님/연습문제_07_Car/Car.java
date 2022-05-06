package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_07_Car;

public class Car {
	// 멤버변수(속성) : 이름, 메이커, 가격

	private String name;
	private	String maker;
	private String price;

	// 생성자 2개 : 1) 매개변수 없는 생성자, 2) 매개변수 3개짜리 생성자

	public Car() {
	}

	public Car(String name, String maker, String price) {
		this.name = name;
		this.maker = maker;
		this.price = price;
	}

	// 멥버변수의 값을 출력할 메소드
	public void 제품정보() {
		System.out.printf("이름 : %s, 메이커 : %s, 가격 : %s", name, maker, price);
	}

}
