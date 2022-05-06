package Chapter_03_연산자.예제.예제_17_조건연산자;

public class 조건연산자 {
	public static void main(String args[]) {
		int x, y, z;
		int absX, absY, absZ;
		char signX, signY, signZ;

		x = 10;
		y = -5;
		z = 0;

		/* abs의 값이 음수이면 양수로 만듬 */
		absX = x >= 0 ? x : -x; // absX = 10
		absY = y >= 0 ? y : -y; // absY = 5(- - => +)
		absZ = z >= 0 ? z : -z; // absZ = 0
		/* 조건 연산자 중첩 */
		/* (x == 0 ? ' ' : '-') -> x는 0과 같지 않으니 '-'를 내뱉음 아래 식으로 변화*/
		/* x > 0 ? '+' : '-' -> x는 0보다 크니 '+'를 내뱉음*/
		signX = x > 0 ? '+' : (x == 0 ? ' ' : '-');
		/* (y == 0 ? ' ' : '-') -> y는 0과 같지 않으니 '-'를 내뱉음 아래 식으로 변화*/
		/* y > 0 ? '+' : '-' -> y는 0보다 작으니 '-'를 내뱉음*/
		signY = y > 0 ? '+' : (y == 0 ? ' ' : '-');
		/* (z == 0 ? ' ' : '-') -> z는 0과 같으니 ' '를 내뱉음 아래 식으로 변화*/
		/* x > 0 ? '+' : ' ' -> x는 0보다 크지 않으니 '+'를 내뱉음*/
		signZ = z > 0 ? '+' : (z == 0 ? ' ' : '-');

		System.out.println("absY= " + absX);
		System.out.println("absY= " + absY);
		System.out.println("absY= " + absZ);
		System.out.printf("x=%c%d%n", signX, absX);
		System.out.printf("x=%c%d%n", signY, absY);
		System.out.printf("x=%c%d%n", signZ, absZ);
	}
}
