package Chapter_08_예외처리.예제.예제_06_예외발생시키기;

public class 예외발생시키기 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Exception e = new Exception("고의로 발생시켰음.");
			throw e; // 예외를 발생시킴
			// 위의 두 줄을 한줄로 줄이면 => throw new Exception("고의로 발생시켰음");
		} catch (Exception e) {
			System.out.println("에러 메시지 : " + e.getMessage()); // getMessage 발생한 예외클래스의 인스턴스에 저장된 메시지를 얻을 수 있음
			e.printStackTrace();
		}

		System.out.println("프로그램이 정상 종료되었음");
	}

}
