package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_01_상속_extends;

public class Phone_IPhone extends phone {
	String battery;
	
	public void call() {
		System.out.println("전화걸기");
	}
	
	public void sms() {
		System.out.println("문자보내기");
	}
}
