package Chapter_05_배열.예제.예제_06_String_배열의초기화;

public class String_배열초기화 {
	public static void main(String args[]) {
		String[] names = { "Kim", "Park", "Yi" };

		for (int i = 0; i < names.length; i++) {
			System.out.println("names[" + i + "]:" + names[i]);
		}

		/* 배열 names의 인덱스넘버 2에 해당하는 요소를 tmp에 저장 */
		String tmp = names[2];
		System.out.println("tmp: " + tmp);
		names[0] = "Yu";
		
		for (int i = 0; i < names.length; i++) {
			System.out.println(names[i]);
		}
	}
}
