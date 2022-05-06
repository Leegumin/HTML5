package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_01_Object클래스의메서드_equals;

public class equals {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Value v1 = new Value(10);
		Value v2 = new Value(10);
		
		if (v1.equals(v2)) {
			System.out.println("v1과 v2는 같습니다.");
		}
		else {
			System.out.println("v1과 v2는 다릅니다.");
		}
		
		// v1과 v2의 메모리 주소가 달라서 비교가 안됨
	}

}
