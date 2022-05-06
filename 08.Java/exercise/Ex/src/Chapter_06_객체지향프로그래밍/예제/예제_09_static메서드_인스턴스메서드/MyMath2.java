package Chapter_06_객체지향프로그래밍.예제.예제_09_static메서드_인스턴스메서드;

public class MyMath2 {
	/* MyMath2 */
	long a, b;

	/* 인스턴스 메소드 정의(일반 메소드 정의) */
	long add() {
		return a + b;
	}

	long subtract() {
		return a - b;
	}

	long multiply() {
		return a * b;
	}

	double divide() {
		return a / b;
	}

	// 전역 메소드 정의
	static long add(long a, long b) {
		long result = a + b;
		return result;
		/* 혹은 return a+b; */
	}

	static long subtract(long a, long b) {
		return a - b;
	}

	static long multiply(long a, long b) {
		return a * b;
	}

	static double divide(double a, double b) {
		return a / b;
	}
}
