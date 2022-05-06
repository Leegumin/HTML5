package Chapter_12_지네릭스_열거형_애너테이션.예제.예제_05_열거형;

enum Direction {
	EAST, SOUTH, WEST, NORTH
}

public class 열거형 {
	public static void main(String[] args) {

//		enum(열거형)을 사용하는 3가지 형태

		// 1. enum을 사용하기 제일 간단한 형태
		Direction d1 = Direction.EAST;

		// 2. valueOf -> 열거형의 WEST라는 상수를 가져온나
		Direction d2 = Direction.valueOf("WEST");

		// 3.
		Direction d3 = Direction.valueOf(Direction.class, "EAST");

		System.out.println("d1 = " + d1);
		System.out.println("d2 = " + d2);
		System.out.println("d3 = " + d3);

		System.out.println("d1==d2 ? " + (d1 == d2));
		System.out.println("d1==d3 ? " + (d1 == d3));
		System.out.println("d1.equals(d3) ? " + d1.equals(d3));
		// 열거형은 부등 표시를 쓸 수 없음
//		System.out.println("d2 > d3 ? " + (d2 > d3));
		System.out.println("d1.compareTo(d3) " + (d1.compareTo(d3)));
		
		// compareTo는 숫자 비교 시 크면 1, 같으면 0, 작으면 -1
		// compareTo는 문자열 비교 시 문자열 길이의 차이값을 리턴해줌. EAST = 0, WEST = 2 -> -2반환
		System.out.println("d1.compareTo(d2) " + (d1.compareTo(d2)));

		switch (d1) {
		case EAST:
			System.out.println("The direction is EAST.");
			break;
		case SOUTH:
			System.out.println("The direction is SOUTH.");
			break;
		case WEST:
			System.out.println("The direction is WEST.");
			break;
		case NORTH:
			System.out.println("The direction is NORTH.");
			break;
		default:
			System.out.println("Invalid direction");
			break;
		}
		
		// 열거형 자료들을 배열로 반환(return)
		Direction[] dArr = Direction.values();

		// 향상된 for문
		for (Direction d : dArr) {
			// name : 열거형의 상수이름을 반환(return)
			// ordinal() : 열거형의 상수 순서를 반환(return)
			System.out.printf("%s = %d%n", d.name(), d.ordinal());

		}
	}
}
