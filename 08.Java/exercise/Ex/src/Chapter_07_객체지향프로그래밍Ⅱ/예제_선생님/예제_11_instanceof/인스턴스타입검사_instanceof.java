package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_11_instanceof;

class 동물 {
	
}

class 조류 extends 동물 {
	
}

class 팽귄 extends 조류 {
	
}
public class 인스턴스타입검사_instanceof {
	public static void main(String[] args) {
		동물 동물객체 = new 동물();
		조류 조류객체 = new 조류();
		팽귄 팽귄객체 = new 팽귄();
		
		System.out.println(동물객체 instanceof 동물);
		System.out.println("-------------------");
		System.out.println(조류객체 instanceof 동물);
		System.out.println(조류객체 instanceof 조류);
		System.out.println("-------------------");
		System.out.println(팽귄객체 instanceof 동물);
		System.out.println(팽귄객체 instanceof 조류);
		System.out.println(동물객체 instanceof 팽귄);
	}
}
