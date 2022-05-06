package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_10_Phone;

public class IPhone extends Phone {
	//멤버변수 : 문자열 : os, numbers, battery
	private String battery;
	
	//메소드 facetime() : 영상통화를 합니다.
	public void facetime() {
		System.out.println("영상통화를 합니다.");
	}
	
	//메소드 itunes() : 음악을 듣습니다.
	public void itunes() {
		System.out.println("음악을 듣습니다.");
	}
}
