package Chapter_06_객체지향프로그래밍.예제.예제_09_static메서드_인스턴스메서드;

public class 인스턴스_static {
	public static void main(String[] args) {
		/* 클래스 분리 방법 */
		/* myMath2 클래스 만든거 출력용 */
		/* 전역 메서드는 객체 생성 안해도 사용 가능 */
		System.out.println(MyMath2.add(200L, 100L));
		System.out.println(MyMath2.subtract(200L, 100L));
		System.out.println(MyMath2.multiply(200L, 100L));
		System.out.println(MyMath2.divide(200L, 100L));
		
		/* 객체생성 */
		MyMath2 mm = new MyMath2();
		mm.a = 200L;
		mm.b = 100L;
		
		/* 인스턴스 메서드는 객체 생성(new) 후 사용 가능 */
		System.out.println(mm.add());
		System.out.println(mm.subtract());
		System.out.println(mm.multiply());
		System.out.println(mm.divide());
	}
}
