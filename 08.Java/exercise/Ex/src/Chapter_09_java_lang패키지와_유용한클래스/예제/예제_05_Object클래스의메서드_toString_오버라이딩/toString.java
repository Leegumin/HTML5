package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_05_Object클래스의메서드_toString_오버라이딩;

public class toString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Card2 c1 = new Card2();
		Card2 c2 = new Card2("HEART", 10);
		
		// 클래스의 이름과 16진수의 해시코드를 반환함
		System.out.println(c1.toString());
		System.out.println(c2.toString());
	}

}
