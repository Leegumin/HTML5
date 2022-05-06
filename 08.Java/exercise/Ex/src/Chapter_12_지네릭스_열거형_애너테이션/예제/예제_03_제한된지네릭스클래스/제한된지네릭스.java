package Chapter_12_지네릭스_열거형_애너테이션.예제.예제_03_제한된지네릭스클래스;

import java.util.ArrayList;

// 지네릭스 테스트용 인터페이스
interface Eatable {
}

// 지네릭스 테스으용 클래스들
class Fruit implements Eatable {
	// 조상의 toString 메서드 오버라이딩
	// toString()의 기본 출력은 주소값
	@Override
	public String toString() {
		return "Fruit";
	}
}

class Apple extends Fruit {
	@Override
	public String toString() {
		return "Apple";
	}
}

class Grape extends Fruit {
	@Override
	public String toString() {
		return "Grape";
	}
}

class Toy {
	@Override
	public String toString() {
		return "Toy";
	}
}

//지네릭스 클래스 정의
class Box<T> {
	ArrayList<T> list = new ArrayList<T>();

	// ArrayList의 기본 메소드 add 재정의
	// ArrayList에 자료 저장
	void add(T item) {
		list.add(item);
	}

	// ArrayList 매개변수 index에 해당하는 자료 가져오기
	T get(int i) {
		return list.get(i);
	}

	// 향상된 배열(ArrayList)의 크기 -> 배열의 length와 같음
	int size() {
		return list.size();
	}

	public String toString() {
		return list.toString();
	}
}

// 지네릭스 클래스 정의
class FruitBox<T extends Fruit & Eatable> extends Box<T> {
}

public class 제한된지네릭스 {
	public static void main(String[] args) {
		FruitBox<Fruit> fruitBox = new FruitBox<Fruit>();
		FruitBox<Apple> appleBox = new FruitBox<Apple>();
		FruitBox<Grape> grapeBox = new FruitBox<Grape>();
		// 에러, 타입 불일치
//		FruitBox<Grape> grapeBox = new FruitBox<Grape>();
		// 에러
//		FruitBox<Toy> toyBox = new FruitBox<Toy>();

		// ArrayList에 자료 저장
		fruitBox.add(new Fruit()); // -> fruitBox[0]
		fruitBox.add(new Apple()); // -> fruitBox[1]
		fruitBox.add(new Grape()); // -> fruitBox[2]
		appleBox.add(new Apple()); // -> appleBox[0]
		// 에러, Grape는 Apple의 자손이 아님
//		appleBox.add(new Grape());
		grapeBox.add(new Grape()); // -> grapeBox[0]

		System.out.println("fruitBox-" + fruitBox);
		System.out.println("appleBox-" + appleBox);
		System.out.println("grapeBox-" + grapeBox);
	}
}
