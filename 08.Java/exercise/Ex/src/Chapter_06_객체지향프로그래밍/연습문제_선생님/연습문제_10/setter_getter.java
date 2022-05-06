package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_10;

public class setter_getter {
	public static void main(String[] args) {
		/* 홍길동이 통장을 개설했다 */
		JBank hong = new JBank("홍길동", 12500);
		
		/* 이순신이도 통장을 개설했다. */
		JBank lee= new JBank("이순신", 59000);
		
		hong.setMoney(30000);
		lee.setMoney(70000);
		
		System.out.printf("%s씨 통장에 금액 %d원을 다시 넣었습니다.%n", hong.getName(), hong.getMoney());
		System.out.printf("%s씨 통장에 금액 %d원을 다시 넣었습니다.%n", lee.getName(), lee.getMoney());
		
		/* 홍길동씨 통장에서 금액을 30000 다시 넣었습니다. */
		/* 이순신씨 통장에서 금액을 70000 다시 넣었습니다. */
		/* setter 재저장 */
		
		/* 홍길동씨 통장 금액은 30000 입니다. */
		/* 이순신씨 통장 금액은 70000 입니다. */
		hong.setMoney(hong.getMoney()+12500);
		lee.setMoney(lee.getMoney()+59000); 
		
		System.out.printf("%s씨 통장 금액은 %d원 입니다.%n", hong.getName(), hong.getMoney());
		System.out.printf("%s씨 통장 금액은 %d원 입니다.%n", lee.getName(), lee.getMoney());
	}
}
