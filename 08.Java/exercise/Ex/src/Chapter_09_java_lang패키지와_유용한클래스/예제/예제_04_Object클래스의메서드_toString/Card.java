package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_04_Object클래스의메서드_toString;

public class Card {
	String kind;
	int number;

	Card() {
		this("SPADE", 1);
	}

	Card(String kind, int number) {
		this.kind = kind;
		this.number = number;
	}
}
