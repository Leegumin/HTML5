package Chapter_08_예외처리.예제.예제_02_try_catch문에서의흐름;

public class try_catch문에서의흐름 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(1);
		try {
			System.out.println(0/0); // 0으로 나눠서 고의로 ArithmeticException을 발생시킴
			System.out.println(2); // 실행되지 않음
			// Arithmetic(산수)Exception(예외)
		} catch (ArithmeticException ae) {	// 예외가 발생하여 실행됨
			System.out.println(3); 
			System.out.println(ae.getMessage());
		} // try-catch의 끝
		System.out.println(4);
	}

}
