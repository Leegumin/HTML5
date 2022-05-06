package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_10_Phone;

public class Galaxy extends Phone {
	//멤버변수 : 문자열 : os, numbers, externalMemory
	private String externalMemory;
	
	//메소드 dmb() : tv를 봅니다.
	public void dmb() {
		System.out.println("tv를 봅니다.");
	}
	
	//메소드 navi() : 길안내를 합니다.
	public void navi() {
		System.out.println("길안내를 합니다.");
	}
}
