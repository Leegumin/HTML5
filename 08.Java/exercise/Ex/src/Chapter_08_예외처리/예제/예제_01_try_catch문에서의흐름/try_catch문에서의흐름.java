package Chapter_08_예외처리.예제.예제_01_try_catch문에서의흐름;

public class try_catch문에서의흐름 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(1);
		try {
			System.out.println(2);
			System.out.println(3);
			// Exception이 예외의 최고 부모
		} catch (Exception e) {	// 예외가 발생하지 않아 실행되지 않음
			System.out.println(4); 
		} // try-catch의 끝
		System.out.println(5);
	}

}
