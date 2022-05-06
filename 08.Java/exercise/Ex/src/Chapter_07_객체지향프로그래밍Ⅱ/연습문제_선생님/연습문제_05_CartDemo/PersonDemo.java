package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_05_CartDemo;

public class PersonDemo {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//생성자를 이용해서 정보 저장하고 출력하기
		//Cart 클래스 제작, 멤버 : owner = "홍길동"
		//Product 클래스를 만들고, 멤버 : no = "", name = "", price = 0, discountRate = 0.0
		//p1 객체 : 생성자를 이용해서 초기화 하세요.
		//no = "a-111", 
		//name = "iphone", 
		//price = 800000, 
		//discountRate = 0.001
		
		//p2객체 : 생성자를 이용해서 초기화 하세요.
		//no = "b-222", 
		//name = "ipad", 
		//price = 1000000, 
		//discountRate = 0.002
		
		//p1.info() : print 출력 ( 위에 정보가 출력되는 메소드)
		//Cart 클래스의 mycart 객체 정보 출력 getter이용 출력
		
		Cart mycart = new Cart();
		
		mycart.setOwner("홍길동");
		
		Product p1 = new Product("a-111", "iphone", 800000, 0.001);
		p1.info();
		System.out.println(mycart.getOwner());
		
		Product p2 = new Product("b-222", "ipad", 1000000, 0.002);
		p2.info();
		System.out.println(mycart.getOwner());
		
		
	}

}
