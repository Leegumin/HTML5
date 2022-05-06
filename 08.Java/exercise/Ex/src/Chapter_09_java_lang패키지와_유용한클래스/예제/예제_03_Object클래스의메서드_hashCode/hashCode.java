package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_03_Object클래스의메서드_hashCode;

public class hashCode {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str1 = new String("abc");
		String str2 = new String("abc");
		
		// 문자열은 동일한 해시코드를 반환하도록 hashCode메서드가 오버라이딩 되어 있음
		System.out.println(str1.equals(str2));
		System.out.println(str1.hashCode());
		System.out.println(str2.hashCode());
		
		// System.identityHashCode(Object x) -> 객체의 주소값으로 해시코드를 생성
		System.out.println(System.identityHashCode(str1));
		System.out.println(System.identityHashCode(str2));
	}

}
