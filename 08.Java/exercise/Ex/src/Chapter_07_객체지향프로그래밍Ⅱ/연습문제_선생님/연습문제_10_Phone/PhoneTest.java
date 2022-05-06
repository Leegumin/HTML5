package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_10_Phone;

public class PhoneTest {

	//public = 어디서든 가져다 쓸수있음, static = 전역, 객체선언 안해도 사용 가능
	public static void testAllPhone(Phone p) {
		//공통기능
		p.call();
		p.sms();
		
//		첫번째 방법
//		if (p instanceof IPhone) {
//			IPhone a = (IPhone)p;
//			a.call();
//			a.sms();
//			a.facetime();
//			a.itunes();
//		}

//		두번째 방법
		if (p instanceof IPhone) {
			((IPhone) p).facetime();
			((IPhone) p).itunes();
		} else if (p instanceof Galaxy) {
			((Galaxy) p).dmb();
			((Galaxy) p).navi();
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 아이폰과 갤럭시의 기능을 모두 출력하세요.
		IPhone iphone = new IPhone();
		Galaxy galaxy = new Galaxy();

		testAllPhone(iphone);
		System.out.println("------------------");
		testAllPhone(galaxy);

	}

}
