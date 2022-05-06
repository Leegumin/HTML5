package Chapter_08_예외처리.예제.예제_05_printStackTrace_getMessage;

public class printStackTrace_getMessage {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println(1);
		System.out.println(2);

		try {
			System.out.println(3);
			System.out.println(0 / 0); // 0으로 나눠서 고의로 ArithmeticException을 발생시킴
			System.out.println(4); // 실행이 멈춤
		} catch (ArithmeticException ae) { // ArithmeticException대신 Exception을 사용.
			ae.printStackTrace(); // 예외발생 당시의 호출스택(Call Stack)에 있었던 메서드의 정보와 예외 메시지를 화면에 출력함
			System.out.println("예외메시지 : " + ae.getMessage()); // getMessage 발생한 예외클래스의 인스턴스에 저장된 메시지를 얻을 수 있음
		}

		System.out.println(6);
	}

}
