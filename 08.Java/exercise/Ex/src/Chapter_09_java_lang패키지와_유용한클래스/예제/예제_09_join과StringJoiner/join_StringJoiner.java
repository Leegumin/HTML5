package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_09_join과StringJoiner;

import java.util.StringJoiner;

public class join_StringJoiner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String animals = "dog,cat,bear";
		String[] arr = animals.split(",");
		
		System.out.println(String.join("-", arr));
		
		// 1st 매개변수 : 구분자
		// 2st 매개변수 : 문자열 처음에 붙일 문자
		// 3st 매개변수 : 문자열 마지막에 붙일 문자
		StringJoiner sj = new StringJoiner("/","[","]");
		
		for (String s : arr) {
			sj.add(s);
		}
		
		System.out.println(sj.toString());
	}

}
