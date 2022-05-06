package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_11;

public class setter_getter_메서드 {
	public static void main(String[] args) {
		Employee hong = new Employee ("skcc12345", "홍길동", 2_000_000);
		Employee lee = new Employee ("skcc156789", "이순신", 2_000_000);
		
		/*이순신씨 월급이 올랐습니다.*/
		/* 메소드 만들기 : 기본월급 + 인센티브(1_000_000) */
		System.out.printf("%s씨 월급이 올랐습니다.%n", lee.getName());
		
		/* getter 출력 */
		/* 홍길동씨 이름과 월급을 출력 */
		/* 이순신씨 이름과 월급을 출력 */
		System.out.printf("%s씨 월급은 %d원 입니다.%n", hong.getName(), hong.getMoney());
		System.out.printf("%s씨 월급은 %d원 입니다.%n", lee.getName(), lee.bonus(1_000_000));
	}
}
