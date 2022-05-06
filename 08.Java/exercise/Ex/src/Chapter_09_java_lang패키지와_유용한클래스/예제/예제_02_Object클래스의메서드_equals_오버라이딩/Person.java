package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_02_Object클래스의메서드_equals_오버라이딩;

public class Person {
	long id;

	// 원래 존재하던 equals() 메서드에 오버라이딩을 실시
	// p1과 p2의 주소값이 아닌 id 값으로 비교하도록 하여 true와 false를 반환하도록 함
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Person) {
			return id == ((Person) obj).id;
		} else {
			return false;
		}
	}

	Person(long id) {
		this.id = id;
	}
}
