package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_17_template패턴;

public class MenualCar extends Car {

	@Override
	public void drive() {
		// TODO Auto-generated method stub
		System.out.println("사람이 운전합니다.");
		System.out.println("사람이 핸들을 조작합니다.");
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		System.out.println("브레이크로 멈춥니다.");
	}

}
