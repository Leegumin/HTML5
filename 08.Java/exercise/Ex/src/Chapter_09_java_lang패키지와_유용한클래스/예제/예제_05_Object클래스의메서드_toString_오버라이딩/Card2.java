package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_05_Object클래스의메서드_toString_오버라이딩;

public class Card2 {
	String kind;
	int number;

	Card2() {
		//Card2(String kind, int number)를 호출
		this("SPADE", 1);
	}

	Card2(String kind, int number) {
		this.kind = kind;
		this.number = number;
	}

	// Card2 인스턴스의 kind와 number를 문자열로 반환함
	@Override
	public String toString() {
		return "kind : " + kind + ", number : " + number;
	}
}
