package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_11_Stringbuffer의비교;

public class Stringbuffer의비교 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		// StringBuffer은 String와 같이 equals가 먹히지 않는다.
		StringBuffer sb = new StringBuffer("abc");
		StringBuffer sb2 = new StringBuffer("abc");
		
		System.out.println("sb == sb2 ? " + (sb == sb2));
		System.out.println("sb.equals(sb2) ? " + sb.equals(sb2));
		
		// StringBuffer의 내용을 String으로 변환
		// String s = new String(sb);와 같음
		String s = sb.toString();
		String s2 = sb2.toString();
		
		System.out.println("s.equals(s2) ? " + s.equals(s2));
	}

}
