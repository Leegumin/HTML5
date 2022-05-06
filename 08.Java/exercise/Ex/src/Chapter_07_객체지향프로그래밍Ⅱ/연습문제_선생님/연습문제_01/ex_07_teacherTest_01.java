package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_01;

public class ex_07_teacherTest_01 {
	public static void main(String[] args) {
		/*VIP, Gold, Silver*/
		/* 속성 : 고객 ID */
		/*       고객 이름 */
		/*       고객 등급 */
		/* 기능 : show() -> 최초에 가입한 당신은 동성쇼핑몰 고객입니다. */
		/* VIP, Gold, Silver : 고객 ID, 고객 이름, 고객 등급 출력 */
		/* 고객 ID : 1, 2, 3 */
		/* 고객 이름 : "홍길동", "이순신", "브래드" */
		/*고객 등급 : "VIP", "Gold", "Silver */
		
		/* 위의 고객들을 생성하고 기능을 출력하세요 */
		
		Customers_VIP vip = new Customers_VIP();
		Customers_Gold gold = new Customers_Gold();
		Customers_Silver silver = new Customers_Silver();
		Customers_Common common = new Customers_Common();
		
		vip.show();
		gold.show();
		silver.show();
		common.show();
	}
}
