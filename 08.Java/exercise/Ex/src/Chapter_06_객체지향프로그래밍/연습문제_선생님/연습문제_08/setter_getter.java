package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_08;

public class setter_getter {
	public static void main(String[] args) {
		Sample aClass = new Sample();

		/* setter로 값을 저장하고 getter로 출력해 보세요 */
		/* a = 10, b = 20, c = 30 */
		/* 출력 : a = 10, b = 20, c = 30 */
		/* set -> 맴버 변수에 값을 저장, get -> 맴버 변수에 값을 출력 */
		aClass.setA(10);
		aClass.setB(20);
		aClass.setC(30);

		System.out.println("a = " + aClass.getA());
		System.out.println("b = " + aClass.getB());
		System.out.println("c = " + aClass.getC());
	}
}
