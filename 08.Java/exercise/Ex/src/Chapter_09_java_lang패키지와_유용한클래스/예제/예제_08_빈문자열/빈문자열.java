package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_08_빈문자열;

public class 빈문자열 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//생성된 개수가 [0]개
		//char[] cArr = {};와 같음
		char[] cArr = new char[0];
		
		//String s = new String("");와 같음
		String s = new String(cArr);
		
		System.out.println("cArr.length = " + cArr.length);
		System.out.println("@@@" + s + "@@@");
	}

}
