package Chapter_06_객체지향프로그래밍.예제.예제_12_매개변수가있는생성자;

class Car {
	/* 색상 */
	String color;
	/* 변속기 종류 - auto, manual */
	String gearType;
	/* 문 개수 */
	int door;

	/* 매개변수 없는 생성자 추가 -> 매개변수가 있는 생성자를 작동해주기 위해 필요함 */
	Car() {
	}

	Car(String c, String g, int d) {
		color = c;
		gearType = g;
		door = d;
	}
}

public class 매개변수있는생성자 {
	public static void main(String[] args) {
		/* 기본 생성자를 이용해서 객체 생성 */
		/* 나쁜 코딩 */
		Car c1 = new Car();
		
		/* c1 객체에 대한 초기화 작업 */
		c1.color = "white";
		c1.gearType = "auto";
		c1.door = 4;

		/* 매개변수 있는 생성자를 이용해 객체 생성 */
		/* 매개변수만 던져주어 초기화가 가능 */
		/* 좋은 코딩 */
		Car c2 = new Car("white", "auto", 4);

		System.out.println("c1의 color=" + c1.color + ", gearType=" + c1.gearType + ", door=" + c1.door);
		System.out.println("c2의 color=" + c2.color + ", gearType=" + c2.gearType + ", door=" + c2.door);

	}
}
