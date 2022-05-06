package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_12;

public class setter_getter {
	public static void main(String[] args) {
		CarFactory sonata = new CarFactory (1, "sonata");
		CarFactory avante = new CarFactory (2, "avante");
		CarFactory santafe = new CarFactory (3, "santafe");
		
		System.out.printf("%d는 %s%n", sonata.carNum, sonata.carName);
		System.out.printf("%d는 %s%n", avante.carNum, avante.carName);
		System.out.printf("%d는 %s%n", santafe.carNum, santafe.carName);
	}
}
