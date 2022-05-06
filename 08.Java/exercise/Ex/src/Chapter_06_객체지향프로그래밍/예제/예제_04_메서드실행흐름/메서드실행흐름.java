package Chapter_06_객체지향프로그래밍.예제.예제_04_메서드실행흐름;

public class 메서드실행흐름 {
	public static void main(String[] args) {
		MyMath mm = new MyMath();

		/* MyMath에서 각 이름으로 정의된 메서드를 불러오고 매개변수를 삽입 5L -> 5를 long형식으로*/
		long result1 = mm.add(5L, 3L);
		long result2 = mm.subtract(5L, 3L);
		long result3 = mm.multiply(5L, 3L);
		double result4 = mm.divide(5L, 3L);
		
		System.out.println("add(5L, 3L) = " + result1);
		System.out.println("subtract(5L, 3L) = " + result2);
		System.out.println("multiply(5L, 3L) = " + result3);
		System.out.println("divide(5L, 3L) = " + result4);
	}
}

class MyMath {
	long add(long a, long b) {
		long result = a + b;
		return result;
		/* 혹은 return a+b; */
	}

	long subtract(long a, long b) {
		return a - b;
	}

	long multiply(long a, long b) {
		return a * b;
	}

	double divide(double a, double b) {
		return a / b;
	}
}
