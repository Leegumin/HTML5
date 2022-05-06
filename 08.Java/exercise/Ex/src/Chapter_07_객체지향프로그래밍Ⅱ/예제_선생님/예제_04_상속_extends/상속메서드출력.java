package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_04_상속_extends;

public class 상속메서드출력 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* VIP, Gold, Silver */
		/*속성 : 고객ID*/
			  /*고객이름*/
			 /* 고객등급 */
		/*기능 : draw() - 여러분은 동성쇼핑몰 고객입니다*/
		/*      show() - 고객ID, 고객이름, 고객등급 출력 */
		/* 위의 고객들을 생성하고 기능을 출력하세요 */
		
		Customers_a Kim = new Customers_a("KimSsi", "김씨", "VIP");
		Kim.draw();
		Kim.show();
		
		Customers_b Lee = new Customers_b("LeeSsi", "이씨", "Gold");
		Lee.draw();
		Lee.show();
		
		Customers_c Jang = new Customers_c("JangSsi", "장씨", "Silver");
		Jang.draw();
		Jang.show();
	}

}
