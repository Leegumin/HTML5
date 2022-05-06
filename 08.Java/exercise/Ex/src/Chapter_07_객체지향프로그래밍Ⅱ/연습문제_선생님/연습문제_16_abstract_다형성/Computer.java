package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_16_abstract_다형성;

public abstract class Computer {
	
	public abstract void display();
	public abstract void typing();
	
	public void turnOn() {
		System.out.println("전원을 켭니다");
	}
	
	public void turnOff() {
		System.out.println("전원을 끕니다");
	}
}
