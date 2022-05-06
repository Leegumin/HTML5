package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_02_Object클래스의메서드_equals_오버라이딩;

public class equals_오버라이딩 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p1 = new Person(8011081111222L);
		Person p2 = new Person(8011081111222L);
		
		if (p1.equals(p2)) {
			System.out.println("p1과 p2는 같은 사람입니다.");
		}
		else {
			System.out.println("p1과 p2는 다른 사람입니다.");
		}
	}

}
