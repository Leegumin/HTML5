package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_12_동적메서드활용;

public class 동적메서드활용 {

	public static void testAllPhone(Phone_02 p) {

		if (p instanceof Phone_02_IPhone) {
			((Phone_02_IPhone) p).sms();
			((Phone_02_IPhone) p).call();
		} else if (p instanceof Phone_02_Galaxy) {
			((Phone_02_Galaxy) p).dmb();
		}
	}

	public static void main(String[] args) {
		Phone_02_IPhone p1 = new Phone_02_IPhone();
		Phone_02_Galaxy p2 = new Phone_02_Galaxy();
		
		testAllPhone(p2);
		testAllPhone(p1);
	}
}
