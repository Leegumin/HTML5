package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_01_상속_extends;

public class 상속_extends {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Phone_IPhone iphone = new Phone_IPhone();
		Phone_Galaxy galaxy = new Phone_Galaxy();
		
		
		galaxy.dmb();
		iphone.sms();
		iphone.call();
	}

}
