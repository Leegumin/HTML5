package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_07;

public class 메서드출력 {
	public static void main(String[] args) {
		/* name "이순신", height 175, weight 75 */
		Person Kim = new Person("이순신", 175, 75);

		System.out.printf("Kim의 정보는 이름:%s, 키:%d, 몸무게:%d", Kim.getName(), Kim.getHeight(), Kim.getWeight());
	}
}
