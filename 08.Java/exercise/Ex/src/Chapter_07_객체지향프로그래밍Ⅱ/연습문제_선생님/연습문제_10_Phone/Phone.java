package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_10_Phone;

public class Phone {
	// 멤버변수 : os, numbers
	private String os;
	private	String numbers;
	
	//메소드 call() : 전화걸기 
	//메소드 sms() : 문자보내기 
	public void call() {
		System.out.println("전화걸기");
	}
	public void sms() {
		System.out.println("문자보내기");
	}
}
