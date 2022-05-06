package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_17_template패턴;

public class CarTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("==== 자율주행 하는 자동차 ====");
		// drive() 메소드
		// print 출력1 : "자율 주행 합니다."
		// print 출력2 : "자동차가 스스로 방향을 전환합니다."
		// stop() 메소드
		// print 출력 : "스스로 멈춥니다."
		// end() 메소드
		Car car1 = new AICar();
		car1.run();

		System.out.println("==== 사람이 운전하는 자동차 ====");
		// drive() 메소드
		// print 출력1 : "사람이 운전합니다."
		// print 출력2 : "사람이 핸들을 조작합니다."
		// stop() 메소드
		// print 출력 : "브레이크로 멈춥니다."
		// end() 메소드
		Car Car2 = new MenualCar();
		Car2.run();

	}

}
