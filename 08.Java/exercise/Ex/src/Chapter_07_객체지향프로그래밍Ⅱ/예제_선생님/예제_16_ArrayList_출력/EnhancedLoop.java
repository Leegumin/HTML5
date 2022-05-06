package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_16_ArrayList_출력;

public class EnhancedLoop {
	public static void main(String[] args) {
		String[] strArray = {"Java", "Android", "C", "Javascript", "Python"};
		
		for (String lang : strArray) {
			System.out.println(lang);
		}
	}
}
