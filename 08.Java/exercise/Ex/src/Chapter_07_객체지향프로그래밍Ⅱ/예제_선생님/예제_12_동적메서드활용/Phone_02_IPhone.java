package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_12_동적메서드활용;

public class Phone_02_IPhone extends Phone_02 {
	String externalMemory;
	
	public void call() {
		System.out.println("전화걸기");
	}
	
	public void sms() {
		System.out.println("문자보내기");
	}
}
