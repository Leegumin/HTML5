package Chapter_08_예외처리.예제.예제_03_예외의발생과_catch블럭;

public class 예외의발생과_catch블럭 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println(1);
		System.out.println(2);

		try {
			System.out.println(3);
			System.out.println(0 / 0); // 0으로 나눠서 고의로 ArithmeticException을 발생시킴
			System.out.println(4); // 실행이 멈춤
		} catch (Exception e) { // ArithmeticException대신 Exception을 사용.
			System.out.println(5);
		}

		System.out.println(6);
	}

}
