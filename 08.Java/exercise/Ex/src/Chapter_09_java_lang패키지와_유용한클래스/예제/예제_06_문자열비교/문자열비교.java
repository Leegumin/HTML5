package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_06_문자열비교;

public class 문자열비교 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 얕은 복사(swallow copy) : 주소와 값이 같음
		String str1 = "abc";
		String str2 = "abc";
		System.out.println("String str1 = \"abc\";");
		System.out.println("String str2 = \"abc\";");

		// 메모리 주소가 같기 때문에 '=='으로 비교해도 true가 나옴
		System.out.println("str1 == str2 ? " + (str1 == str2));
		System.out.println("str1.equals(str2) ? " + str1.equals(str2));
		System.out.println();
		
		// 깊은 복사(deep copy) : 주소는 틀리고 값은 같음
		String str3 = new String("abc");
		String str4 = new String("abc");
		
		System.out.println("String str3 = new String(\"abc\");");
		System.out.println("String str4 = new String(\"abc\");");
		
		// 메모리 주소가 다르기 때문에 '=='으로 비교하면 false가 나옴
		System.out.println("str3 == str4 ? " + (str3 == str4));
		System.out.println("str3.equals(str4) ? " + str3.equals(str4));
	}

}
